<!DOCTYPE html>
<html>
<head>
    <style>
        div.gallery {
            margin: 5px;
            border: 1px solid #ccc;
            float: left;
            width: 180px;
        }

        div.gallery:hover {
            border: 1px solid #777;
        }

        div.gallery img {
            width: 100%;
            height: auto;
        }

        div.desc {
            padding: 15px;
            text-align: center;
        }
    </style>
</head>

<body>
Haze Level : <
<select style="width: 200px;" id="myselect" name="location"
        onchange="window.location='opendata.php?id='+this.value+'&pos='+this.selectedIndex">
    <option value="10">10</option>
    <option value="20">20</option>
    <option value="30">30</option>
    <option value="40">40</option>
    <option value="50">50</option>
    <option value="60">60</option>
</select>

<script>
    var myselect = document.getElementById("myselect");
    myselect.options.selectedIndex = <?php echo $_GET["pos"]; ?>;
    console.log(myselect.options.selectedIndex);
</script>
<br>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sort_image";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$dirname = "haze-level/images/";
$images = glob($dirname . "*.png");
$file = file_get_contents('./haze-level/labels.txt', true);
//echo ($file);

$name = explode(" ", $file);

for ($a = 1; $a < sizeof($name); $a++) {
    $quan[$a - 1] = substr($name[$a], 0, 2);
    $name[$a] = substr($name[$a], 3);
}
$b = 1;
if (isset($_GET['id'])) {
    foreach ($images as $image) {
        //$sql = "INSERT INTO haziness(url, haze) VALUES('$name[$b]' , '$quan[$b]')";
        //if ($conn->query($sql) !== TRUE)
        //  echo "Error: " . $sql . "<br>" . $conn->error;
        if ($quan[$b] <= $_GET['id'] && $quan[$b] >= ($_GET['id'] - 10)) {
            echo '<div class="gallery"
            <a target="_blank" href="haze-level/' . $name[$b] . '">
                <img src="haze-level/' . $name[$b] . '" alt="nama : ' . $name[$b] . ' level : ' . $quan[$b] . '" width="100" height="100">
            </a>
            <div class="desc">nama : ' . $name[$b] . ' level : ' . $quan[$b] . '</div>
            </div>';
        }
        $b++;
        if ($b == 100)
            exit(0);
    }
}


$conn->close();

?>


</body>
</html>