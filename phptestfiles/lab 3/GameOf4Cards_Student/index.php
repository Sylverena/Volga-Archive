<?php
/*
 * This is the "main driver" of the program. As in the previous lab, this
 * program is implemented as a self-loading web page. Rather than keeping
 * global variables, the program should simply use pre-existing "global"
 * variable, $_SESSION. This is how the state of the program is maintained
 * between page loads.
 *
 * The way it works is this:
 * (1) Start a session
 * (2) If the request method is GET, initialize the game: initGame().
 * (3) If the request method is POST, update the game's state: updateGame().
 *
 * That code should go here.
 */
require_once 'src/functions/initGame.php';
require_once 'src/functions/updateGame.php';
require_once 'src/functions/gameOver.php';

session_start();

if ($_SERVER['REQUEST_METHOD'] == 'GET')
{
    initGame();
}
if ($_SERVER['REQUEST_METHOD'] == 'POST' && !gameOver())
{
    updateGame();
}
if(gameOver())
{
    ?>
    <script src="https://code.jquery.com/jquery-3.6.1.js"
            integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function ()
            {
                $("#picks").append("<p>YOU WIN!!</p>")
            }
        )
    </script>
<?php } ?>

<!DOCTYPE html>
<html lang="en">

<?php include_once 'config/config.php' ?>

<?php include_once 'src/pages/head.php' ?>

<body>

<?php include_once 'src/pages/header.php' ?>
<?php include_once 'src/pages/desc.php'; ?>

<div class="row">
    <?php include_once 'src/pages/content-left.php' ?>
    <?php include_once 'src/pages/content-right.php' ?>
</div>

<?php include_once 'src/pages/footer.php' ?>
</body>

</html>
