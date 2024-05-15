<?php
$servername = 'localhost';
$username = 'enduser';
$password = '2[OisRACF[UxXNtq';

$sqlConnection = new mysqli($servername, $username, $password, 'volga_db');

// Check connection
if ($sqlConnection->connect_error) {
    die("Connection failed: " . $sqlConnection->connect_error);
}



$results = $sqlConnection->query("call getBookInfo('0060598999')")->getIterator();

foreach ($results as $i)
    echo $i;
?>