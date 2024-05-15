<?php
if ( session_status() === PHP_SESSION_NONE ) session_start();
$_SESSION['menuItemActive'] = 4;
$_SESSION['page'] = 'campus';
include_once 'src/stems/main.php';
?>