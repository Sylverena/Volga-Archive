<?php
if ( session_status() === PHP_SESSION_NONE ) session_start();
$_SESSION['menuItemActive'] = 3;
$_SESSION['page'] = 'course';
include_once 'src/stems/main.php';
?>