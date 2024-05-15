<?php
if (session_status() === PHP_SESSION_NONE)
{
    session_start();
}
if ($_GET['signout'])
{
    session_unset();
}
if (isset($_SESSION['userId']) || $_SESSION['authenticated'])
{
    header("Location: /dashboard/");
    die;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Volga - Sign in</title>
    <link type="text/css" rel="stylesheet" href="styles/main.css">
    <script src="https://code.jquery.com/jquery-3.6.1.js"
            integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script src="/scripts/js/loginform.js"></script>
    <style>
        label {
            font-size: 1.5em;
        }
    </style>
</head>
<body>
<?php
require_once 'snippets/volgaHeader.php';
?>
<h1 style="margin: 5vh 0 4vh 12vw; font-size: 3.5em">Sign in to Volga.</h1>
<?php
if (isset($_GET['referrer']))
{
    ?>
    <div class="volga-login center error-box" ><h2 style="color: red">Username or password invalid</h2></div>
    <?php
} ?>
<div class="center volga-login" >
    <form id="login-form" method="post" action="/dashboard/" class="center">
        <label for="email" style="display: block; margin-bottom: 1em"><input required type="text" name="email" id="email"
                                                                             style="width: 30vh; font-size: 1em"> <br>Email<span></span></label>
        <label for="password" style="display: block"><input required type="password" name="password" id="password"
                                                            style="width: 30vh; font-size: 1em"><br>Password<span></span></label>
        <button class="buy-button" type="submit" id="submit" style="margin-top: 2em;">Sign in</button>
    </form>
</div>
</body>
</html>
