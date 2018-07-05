<?php
$host = "localhost";
$username = "root";
$password = "";
$db_name = "phpschool";

mysql_connect($host, $username, $password) or die("Database not connect");
mysql_select_db($db_name) or die ("could not connect databse");
error_reporting("E_ERROR_WORKING");
ECHO "DAtabase connecet success";


?>