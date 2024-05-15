<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once dirname(__DIR__) . "/scripts/php/getSqlConnection.php";
$sqlConnection = getSqlConnection();

$bookResultSet = $sqlConnection->query("call getBookInfo('0316042676')");

do
{
    $sqlConnection->next_result();
} while ($sqlConnection->more_results());

$jsonResultSet = json_encode($bookResultSet->fetch_assoc());

echo $jsonResultSet;

$sqlConnection->close();

$decodedJson = json_decode($jsonResultSet, true);

echo '<br>';

foreach($decodedJson as $x => $x_value) {
    echo "Key=" . $x . ", Value=" . $x_value;
    echo "<br>";
}
