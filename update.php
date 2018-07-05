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
//echo var_dump($_POST);
$name = $_POST['name'];
$tingkat = $_POST['quan'];
$putih = $_POST['white'];

$mean = $_POST['mean'];
$stddev = $_POST['stddev'];

//$sql = "UPDATE haziness SET zeros='$haze' WHERE url='$name'";
$sql1 = "SELECT url FROM haziness_gray WHERE url='$name'";
if ($conn->query($sql1) !== $name)
    $sql = "INSERT IGNORE INTO haziness_gray(url, tingkat ,putih, mean, stddev) VALUES('$name' , '$tingkat','$putih','$mean','$stddev')";
//echo $sql;
if ($conn->query($sql) !== TRUE)
    echo "Error: " . $sql . "<br>" . $conn->error;
