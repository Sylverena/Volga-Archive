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
    <title>Volga - Search</title>
    <link type="text/css" rel="stylesheet" href="styles/main.css">
    <link type="text/css" rel="stylesheet" href="styles/headerstyle.css">
    <link type="text/css" rel="stylesheet" href="styles/footerstyle.css">
    <link type="text/css" rel="stylesheet" href="styles/searchstyle.css">
    <link type="text/css" rel="stylesheet" href="styles/flexstyle.css">
</head>
<body>
<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once 'snippets/volgaHeader.php';
require_once 'scripts/php/displayCards.php';
?>
<h1 class="center" style="font-size: 5em">Search Volga.</h1>
<?php
if (!isset($_REQUEST['keyword']))
{
    ?>
    <div class="search-container center">
        <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ?>"><label for="search" style="font-size: 3em">Search Books <br>
                <input placeholder="Title, ISBN, Genre" id="search" name="keyword" type="search"
                       style="height: 5vh; font-size: 4vh; text-align: center"></label></form>
    </div>
    <?php
} else
{
    $keyword = html_entity_decode($_REQUEST['keyword']);

    $servername = 'localhost';
    $username = 'enduser';
    $password = '2[OisRACF[UxXNtq';

    $sqlConnection = new mysqli($servername, $username, $password, 'volga_db');

    // Check connection
    if ($sqlConnection->connect_error)
    {
        die("Connection failed: " . $sqlConnection->connect_error);
    }

    // prepare the SQL statement with a placeholder for the keyword
    $stmt = $sqlConnection->prepare("CALL searchBooks(?)");

// bind the keyword to the prepared statement
    $stmt->bind_param("s", $keyword);

// execute the prepared statement
    $stmt->execute();

// get the result set from the prepared statement
    $bookResultSet = $stmt->get_result();

    do
    {
        $stmt->next_result();
    } while ($stmt->more_results());

    $stmt->close();
    ?>

    <div class="search-container">
        <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'])?>" style="margin: auto 0 4em 70vw"><label for="search">Search Books
                <input placeholder="Title, ISBN, Genre, Author" id="search" name="keyword" type="search"
                       style="text-align: right"></label></form>
        <h2 class="center">You searched for '<?php echo $_REQUEST['keyword'] ?>'. <?php echo $bookResultSet->num_rows ?> results.</h2>
    </div>
    <div class="flex-container" style="justify-content: center">
        <?php
        displayCards($bookResultSet);
        ?>
    </div>
    <?php
} ?>
<?php
require_once "snippets/volgaFooter.php";
if (isset($_REQUEST['keyword']))
    $sqlConnection->close()
?>
</body>
</html>
