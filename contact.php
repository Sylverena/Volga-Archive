<?php
if (session_status() === PHP_SESSION_NONE)
{
    session_start();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Volga - Contact us</title>
    <link type="text/css" rel="stylesheet" href="styles/main.css">
    <link type="text/css" rel="stylesheet" href="styles/headerstyle.css">
    <link type="text/css" rel="stylesheet" href="styles/footerstyle.css">
</head>
<body>
<?php
require_once 'snippets/volgaHeader.php';
?>
<div class="container" style="margin-bottom: 60vh">
    <h1 class="center" style="font-size: 5em">Contact Volga.</h1>
    <aside style="float: right">
        <img src="https://media.istockphoto.com/photos/were-always-learning-in-this-office-picture-id1197955013?k=20&m=1197955013&s=612x612&w=0&h=w_qWQHk8_JcqfvTBbF__JsSCRL8x8EayP1leWyAHANc="
             alt="">
    </aside>
    <h2>Phone: 1-800-78-VOLGA</h2>
    <h2>Email: customerservice@volga.com</h2>
    <h3>Business inquires use: business@volga.com</h3>
    <h2>Mail us: 1423 Main Street</h2>
</div>
<?php
require_once 'snippets/volgaFooter.php';
?>
</body>
</html>