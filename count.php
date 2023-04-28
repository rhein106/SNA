<?php
$host = '172.17.0.2';
$dbname = 'redlock';
$username = 'root';
$password = '123';

$conn = mysqli_connect($host, $username, $password, $dbname);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM employees";


$result = mysqli_query($conn, $sql);


if (!$result) {
    die("Query failed: " . mysqli_error($conn));
}

$N = 0;
while ($row = mysqli_fetch_assoc($result)) {
  $N++;
}
echo $N." USER";

mysqli_close($conn);

?>