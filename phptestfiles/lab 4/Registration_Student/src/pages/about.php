<?php
if ( session_status() === PHP_SESSION_NONE ) session_start();
$_SESSION['menuItemActive'] = 5;
$_SESSION['page'] = 'about';
include_once 'src/stems/main.php';
?>