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


while ($row = mysqli_fetch_assoc($result)) {
    echo "Column ID: " . $row["ID"] . "<br>";
    echo "Column Nama: " . $row["Nama"] . "<br>";
    echo "Column Alamat: " . $row["Alamat"] . "<br>";
    echo "Column Jabatan: " . $row["Jabatan"] . "<br>";
    
}


mysqli_close($conn);

?>