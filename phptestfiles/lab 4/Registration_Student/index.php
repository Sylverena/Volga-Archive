<?php
if ( isset ( $_GET['c'] ) )
{
    switch ( $_GET['c'] )
    {
        case 'about': include_once 'src/pages/about.php'; break;
        case 'campus': include_once 'src/pages/campus.php'; break;
        case 'course': include_once 'src/pages/course.php'; break;
        case 'home': include_once 'src/pages/home.php'; break;
        case 'student': include_once 'src/pages/student.php'; break;
        default: include_once 'error.html';
    }
}
else
{
    // Error...
    include_once 'error.html';
}