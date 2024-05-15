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
    <title>Volga - Your Gateway to Literature</title>
    <link type="text/css" rel="stylesheet" href="styles/main.css">
</head>
<body>
<?php
require_once 'snippets/volgaHeader.php';
?>
<div class="landing" style="margin-bottom: 4em;">
    <img src="images/volgabanner.gif" alt="Volga Banner" style="width: 100%">
    <h1 style="text-align: center;">Your Gateway to Literature.</h1>
    <a href="#below-landing"><img src="images/chevron.svg" class="center" style="width: 3vw" alt="Continue"></a>
</div>
<section id="below-landing" style="margin-bottom: 80vh; text-align: center">
    <h3>Explore and find your story today</h3>
    <p>Browse Volga's robust collection to find the story you never knew you needed. Volga's store page can sort by any genre your heart desires.</p>
    <a class="buy-button" href="shop.php">Shop Volga</a>
    <!-- Put featured cards from database here -->
</section>
<?php
require_once 'snippets/volgaFooter.php';
?>
</body>
</html>