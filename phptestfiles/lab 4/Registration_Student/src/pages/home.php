<?php
if ( session_status() === PHP_SESSION_NONE ) session_start();
$_SESSION['menuItemActive'] = 1;
$_SESSION['page'] = 'home';
include_once 'src/stems/main.php';
?>