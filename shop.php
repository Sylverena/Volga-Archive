<?php
if (session_status() === PHP_SESSION_NONE)
{
    session_start();
}
?>
<!DOCTYPE html>
<html lang="en">
<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$servername = 'localhost';
$username = 'enduser';
$password = '2[OisRACF[UxXNtq';

$sqlConnection = new mysqli($servername, $username, $password, 'volga_db');

// Check connection
if ($sqlConnection->connect_error)
{
    die("Connection failed: " . $sqlConnection->connect_error);
}

#### this probably works
if (isset($_GET['sortBy']) && is_numeric($_GET['sortBy']))
{
    $stmt = $sqlConnection->prepare('call getBooksByGenre(?)');
    $stmt->bind_param('s', $_GET['sortBy']);
    $stmt->execute();

    $bookResultSet = $stmt->get_result();

    $stmt->close();
} else
{
    $bookResultSet = $sqlConnection->query("call getAllBooks()");
}

do
{
    $sqlConnection->next_result();
} while ($sqlConnection->more_results());

$genreResultSet = $sqlConnection->query("call getAllGenres()");
do
{
    $sqlConnection->next_result();
} while ($sqlConnection->more_results());
?>
<head>
    <meta charset="UTF-8">
    <title>Volga - Shop all</title>
    <link type="text/css" rel="stylesheet" href="styles/main.css">
    <link type="text/css" rel="stylesheet" href="styles/flexstyle.css">
    <link type="text/css" rel="stylesheet" href="styles/searchstyle.css">
</head>
<body>
<?php
require_once 'snippets/volgaHeader.php';
require_once 'scripts/php/displayCards.php';
?>
<div class="search-container">
    <form method="post" action="search.php" style="margin: auto 0 auto 70vw"><label for="search">Search Books
            <input placeholder="Title, ISBN, Genre, Author" id="search" name="keyword" type="text"
                   style="text-align: right"></label></form>
</div>
<div class="grid-container">
    <div class="sidebar" style="background-color: powderblue; padding: 0 1em 1em;">
        <h1 style="margin-top: 0; margin-bottom: 0; font-size: 4em">Shop Volga.</h1>
        <h2>Genres:</h2>
        <ul>
            <li><h3><a href="shop.php">All</a></h3></li>
            <?php while ($row = $genreResultSet->fetch_assoc())
            {
                ?>
                <li><h3>
                        <a href="/shop.php?sortBy=<?php echo $row['genreId']; ?>"><?php echo $row['genreName']; ?></a>
                    </h3></li>
                <?php
            }
            ?>
        </ul>
    </div>
    <div class="flex-container">
        <?php
        displayCards($bookResultSet);
        ?>
    </div>
</div>
<?php
require_once 'snippets/volgaFooter.php';
?>
</body>
</html>