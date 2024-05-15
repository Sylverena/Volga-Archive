<?php

function getSqlConnection() : false|mysqli
{
    $servername = 'localhost';
    $username = 'enduser';
    $dbpassword = '2[OisRACF[UxXNtq';
    $sqlConnection = new mysqli($servername, $username, $dbpassword, 'volga_db');

    // Check connection
    if ($sqlConnection->connect_error)
    {
        return false;
    }
    return $sqlConnection;
}