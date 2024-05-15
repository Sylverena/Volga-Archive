<?php
if ( session_status() === PHP_SESSION_NONE ) session_start();
$_SESSION['menuItemActive'] = 2;
$_SESSION['page'] = 'student';
include_once 'src/stems/main.php';
?>