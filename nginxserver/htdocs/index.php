<?php 

// mysqli_connect("root");
$servername='mysqlmaster';
$username='demo';
$password='rahasia';
$db = "demo";

// mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

$mysqli = new mysqli($servername, $username, $password,$db);




if ($mysqli->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
else echo "Connected successfully";


$result = $mysqli->query("select * from test");
echo ($result)?"echo sukses query":"gagal";
while($row = $result->fetch_object() ) : 
    print_r($row);
endwhile;


?>