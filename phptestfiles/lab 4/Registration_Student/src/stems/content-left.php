<?php require_once '../functions/getPageName.php'; ?>
<div class="column left" id="left-column">
    <?php
    // Todo 4: Implement this logic.
    // If the page name is 'home', you should display
    // src/html/default-left-side.html.  Otherwise you should display whichever
    // left-side menu HTML page is necessary.  I.e., display the
    //src/html/student-left-side-menu.html if it is the 'student' page.

    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    $currentPage = getPageName();

    if ($currentPage == 'home')
    {
        include '../html/default-left-side.html';
    } else if ($currentPage == 'student')
    {
        include '../html/student-left-side-menu.html';
    } else if ($currentPage == 'course')
    {
        // todo include 'src/html/';
    } else if ($currentPage == 'campus')
    {
        // todo include 'src/html/';
    } else if ($currentPage == 'about')
    {
        // todo include 'src/html/';
    }
    ?>
</div>
