<?php

/* Include the `fusioncharts.php` file that contains functions    to embed the charts. */

include("classes/fusioncharts.php");

/* The following 4 code lines contain the database connection information. Alternatively, you can move these code lines to a separate file and include the file here. You can also modify this code based on your database connection. */

$hostdb = "localhost";  // MySQl host
$userdb = "root";  // MySQL username
$passdb = "";  // MySQL password
$namedb = "sort_image";  // MySQL database name

// Establish a connection to the database
$dbhandle = new mysqli($hostdb, $userdb, $passdb, $namedb);

/*Render an error message, to avoid abrupt failure, if the database connection parameters are incorrect */
if ($dbhandle->connect_error) {
    exit("There was an error with your connection: " . $dbhandle->connect_error);
}
?>

<html>
<head>
    <title>FusionCharts XT - Column 2D Chart - Data from a database</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>

    <!-- You need to include the following JS file to render the chart.
    When you make your own charts, make sure that the path to this JS file is correct.
    Else, you will get JavaScript errors. -->

    <script src="node_modules/fusioncharts/fusioncharts.js"></script>
</head>

<body>
<?php


$strQueryCategories = "select distinct DATE_FORMAT(Factory_Output.DatePro,'%c-%d-%Y') as DatePro from Factory_Output order by DatePro";

$resultCategories = $dbhandle->query($strQueryCategories) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");


$strQueryData = "select Factory_Master.FactoryName, DATE_FORMAT(Factory_Output.DatePro,'%c-%d-%Y') as DatePro, Factory_Output.Quantity
						from Factory_Master Factory_Master, Factory_Output Factory_Output 
						where Factory_Output.FactoryID = Factory_Master.FactoryId 
						order by Factory_Output.FactoryID, Factory_Output.DatePro";

$resultData = $dbhandle->query($strQueryData) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");


if ($resultData) {

    /* `$arrData` is the associative array that is initialized to store the chart attributes. */
    $arrData = array(
        "caption" => "Top 10 Most Populous Countries",
        "paletteColors" => "#0075c2,#00ff00,#ff00a5",
        "bgColor" => "#ffffff",
        "borderAlpha" => "20",
        "canvasBorderAlpha" => "0",
        "usePlotGradientColor" => "0",
        "plotBorderAlpha" => "10",
        "showXAxisLine" => "1",
        "xAxisLineColor" => "#999999",
        "showValues" => "0",
        "divlineColor" => "#999999",
        "divLineIsDashed" => "1",
        "showAlternateHGridColor" => "0"
    );

    $xmlData = "<chart";

    // Iterate over each chart attribute and convert it into an attribute string
    foreach ($arrData as $key => $value) {
        $xmlData .= " $key= \"$value\" ";
    }

    $xmlData .= ">";


    if ($resultCategories) {
        $xmlData .= "<categories>";
        while ($row = mysqli_fetch_array($resultCategories)) {
            $xmlData .= "<category label=\"" . $row["DatePro"] . "\" />";
        }
        $xmlData .= "</categories>";
    }


    if ($resultData) {
        $controlBreakValue = "";
        while ($row = mysqli_fetch_array($resultData)) {
            if ($controlBreakValue != $row["FactoryName"]) {
                if ($controlBreakValue != "") {
                    $xmlData .= "</dataset>";
                }
                $controlBreakValue = $row["FactoryName"];
                $xmlData .= "<dataset seriesName=\" $controlBreakValue \">";
                $controlBreakValue == "";
            }
            $xmlData .= "<set value=\"" . $row["Quantity"] . "\" />";

        }
        $xmlData .= "</dataset>";
    }


    $xmlData .= "</chart>";

    $columnChart = new FusionCharts("mscolumn2d", "myFirstChart", 600, 300, "chart-1", "xml", "$xmlData");

    // Render the chart
    $columnChart->render();

    // Close the database connection
    $dbhandle->close();
}

?>

<div id="chart-1">Fusion Charts will render here</div>

</body>

</html>