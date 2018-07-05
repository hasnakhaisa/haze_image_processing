<?php

/* Include the `fusioncharts.php` file that contains functions	to embed the charts. */

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
    <script type="text/javascript" src="node_modules/fusioncharts/themes/fusioncharts.theme.ocean.js"></script>
    <script type="text/javascript"
            src="http://static.fusioncharts.com/code/latest/themes/fusioncharts.theme.fint.js?cacheBust=56"></script>
</head>

<body>
<?php

// Form the SQL query that returns the top 10 most populous countries
$strQuery = "SELECT url, haze, zeros FROM haziness ORDER BY url ASC";

// Execute the query, or else return the error message.
$result = $dbhandle->query($strQuery) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");

// If the query returns a valid response, prepare the JSON string
if ($result) {
    // The `$arrData` array holds the chart attributes and data
    $arrData = array(
        "chart" => array(
            "caption" => "Haziness",
            "showValues" => "0",
            "theme" => "fint"
        )
    );

    $arrData["data"] = array();

    // Push the data into the array
    while ($row = mysqli_fetch_array($result)) {
        array_push($arrData["data"], array(
                "label" => $row["url"],
                "value" => $row["haze"],
                //"value1" => $row["zeros"]
            )
        );
    }

    /*JSON Encode the data to retrieve the string containing the JSON representation of the data in the array. */

    $jsonEncodedData = json_encode($arrData);

    /*Create an object for the column chart using the FusionCharts PHP class constructor. Syntax for the constructor is ` FusionCharts("type of chart", "unique chart id", width of the chart, height of the chart, "div id to render the chart", "data format", "data source")`. Because we are using JSON data to render the chart, the data format will be `json`. The variable `$jsonEncodeData` holds all the JSON data for the chart, and will be passed as the value for the data source parameter of the constructor.*/

    $columnChart = new FusionCharts("line", "myFirstChart", 1280, 500, "chart-1", "json", $jsonEncodedData);

    // Render the chart
    $columnChart->render();

    // Close the database connection
    $dbhandle->close();
}

?>

<div id="chart-1"><!-- Fusion Charts will render here--></div>

</body>

</html>