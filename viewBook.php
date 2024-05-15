<?php
if (session_status() === PHP_SESSION_NONE)
{
    session_start();
}

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if (isset($_GET['bookId']))
{
    $isbn = $_GET['bookId'];    // gets the ISBN from url
} else if (isset($_POST['bookId']))
{
    $isbn = $_POST['bookId'];
} else
{
    http_response_code(404);
    die("404: Specified resource not found");
}


require_once 'scripts/php/getSqlConnection.php';

$sqlConnection = getSqlConnection();

$stmt = $sqlConnection->prepare("call getBookInfo(?)");
$stmt->bind_param("s", $isbn);
$stmt->execute();
$resultSet = $stmt->get_result();

do
{
    $stmt->next_result();
} while ($stmt->more_results());

$stmt->close();

if ($resultSet->num_rows < 1)
{
    http_response_code(404);
    die("404: Specified resource not found");
}

$resultsArray = $resultSet->fetch_assoc();

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_SESSION['userId']) && $_SESSION['authenticated'] && isset($_POST['rating']))
{
    require_once "scripts/php/functions/sanitizeInput.php";

    $reviewText = $_POST['review-text'] ?? '';
    $userId = sanitizeInput($_SESSION['userId']);
    $rating = sanitizeInput($_POST['rating']);
    $reviewText = sanitizeInput($reviewText);
    $userId = intval($userId);

    if (is_numeric($rating))
        $rating = intval($rating);
    else
    {
        http_response_code(400);
        die('400: Bad Request');
    }

    if ($rating < 1 || $rating > 5)
    {
        http_response_code(400);
        die('400: Bad Request');
    }

    $stmt = $sqlConnection->prepare('call addReview(?, ?, ?, ?)');
    $stmt->bind_param('siis', $resultsArray['isbn'], $userId, $_POST['rating'], $reviewText);
    $stmt->execute();

    if ($stmt->errno)
    {
        die("SQL Error: " . $stmt->error);
    }

    $stmt->close();

}

$stmt = $sqlConnection->prepare('call getReviews(?)');
$stmt->bind_param('s', $resultsArray['isbn']);
$stmt->execute();

$reviewResultSet = $stmt->get_result();

do
{
    $stmt->next_result();
} while ($stmt->more_results());

$stmt->close();


$sqlConnection->close();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Volga - <?php echo $resultsArray['title']; ?></title>
    <link type="text/css" rel="stylesheet" href="/styles/main.css">
    <link type="text/css" rel="stylesheet" href="/styles/flexstyle.css">
    <script src="https://code.jquery.com/jquery-3.6.1.js"
            integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script src="/scripts/js/cart/CartAdd.js"></script>
    <script src="/scripts/js/BookReview.js"></script>
    <link type="text/css" rel="stylesheet" href="/styles/ratings.css">
</head>
<body>
<?php
require_once 'snippets/volgaHeader.php';
?>
<div class="container grid-container" style="gap: 2em">
    <div>
        <figure>
            <img style="width: 80%" class="center" src="/images/bookicons/<?php echo $resultsArray['imageFilename']; ?>"
                 alt="<?php echo $resultsArray['title']; ?> cover">
            <figcaption style="text-align: center; margin-top: .5em; font-size: 1em">
                $<?php echo number_format($resultsArray['price'], 2); ?></figcaption>
        </figure>

        <form method="post" id="add-to-cart">
            <label class="center" for="quantity">
                <input min="1" id="quantity" name="quantity" style="width: 10%" type="number" required value="1"><br>
                Quantity
            </label><br>
            <input type="hidden" name="isbn" value="<?php echo $resultsArray['isbn'] ?>">
            <button class="buy-button" id="buy-button" name="isbn" type="submit" style="display: block; margin: 0 auto">
                Add to Cart
            </button>
        </form>
    </div>
    <div>
        <p style="color: dimgrey" class="link-map"><a href="/shop.php">Volga</a> > <a
                href="/shop.php?sortBy=<?php echo $resultsArray['genreId'] ?>"><?php echo $resultsArray['genreName'] ?></a>
            > <?php echo $resultsArray['title'] ?></p>
        <h1><?php echo $resultsArray['title']; ?></h1>
        <h2 style="margin-bottom: 1.5em">
            By <?php echo empty($resultsArray['compositeName']) ? '[No Author]' : $resultsArray['compositeName']; ?></h2>
        <?php echo htmlspecialchars_decode($resultsArray['description']); ?>
        <p style="margin-top: 1em">Additional Information:</p>
        <ul>
            <li>Genre: <?php echo $resultsArray['genreName']; ?></li>
            <li>Original published date: <?php echo $resultsArray['pubDate']; ?></li>
            <li>Page amount: <?php echo $resultsArray['pages']; ?></li>
            <li>Binding: <?php echo $resultsArray['binding']; ?></li>
            <li>Publisher: <?php echo $resultsArray['fullName']; ?></li>
            <li>ISBN: <?php echo $resultsArray['isbn']; ?></li>
        </ul>
        <hr style="margin-bottom: 1em">
        <div class="reviews" style="background-color: lavenderblush; border-radius: 2em; padding: 1em;">
            <?php
            if (isset($_SESSION['userId']) && $_SESSION['authenticated'])
            {
                ?>
                <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ?>" id="review-form">
                    <input type="hidden" name="bookId" value="<?php echo $resultsArray['isbn'] ?>">
                    <fieldset class="rating">
                        <legend>Review this book:<span style="color: red">*</span></legend>
                        <input type="radio" id="star5" name="rating" required value="5"/><label for="star5"
                                                                                                title="5 stars"></label>
                        <input type="radio" id="star4" name="rating" required value="4"/><label for="star4"
                                                                                                title="4 stars"></label>
                        <input type="radio" id="star3" name="rating" required value="3"/><label for="star3"
                                                                                                title="3 stars"></label>
                        <input type="radio" id="star2" name="rating" required value="2"/><label for="star2"
                                                                                                title="2 stars"></label>
                        <input type="radio" id="star1" name="rating" required value="1"/><label for="star1"
                                                                                                title="1 star"></label>
                    </fieldset>
                    <label for="review-text" class="center"
                           style="display: block; text-align: left; margin-left: 25%; margin-bottom: 1em">Review
                        Text:</label>
                    <div class="text-area">
                        <textarea class="center" name="review-text" id="review-text" cols="100" rows="10"
                                  style="resize: none; margin-bottom: 1em; text-align: left"></textarea>
                        <p style="margin-right: 25%; margin-left: auto; text-align: right" id="count-char">2000</p>
                    </div>
                    <input class="center" type="submit" value="Submit" style="width: 10%;"/>
                </form>
                <?php
            } else
            {
                ?>
                <h4 class="center">Please sign in to post reviews.</h4>
                <a class="center" href="signIn.php" style="margin-bottom: 2em">SIGN IN</a>
                <?php
            }
            ?>
            <div class="flex-row-container" style="gap: 0">
                <?php while ($row = $reviewResultSet->fetch_assoc())
                {
                    ?>
                    <div class="flex-row" style="height: auto; padding-left: 2em">
                        <h3 style="margin-bottom: .5em;">Posted by <?php echo $row['firstName'] ?>
                            at <?php echo $row['timePosted'] ?></h3>
                        <h4 style="margin: .5em auto;">
                            <?php
                            $starString = '';
                            $stars = 0;
                            for (; $stars < $row['stars']; $stars++)
                            {
                                $starString .= '&#9733;';    // html code for stars
                            }

                            for ($emptyStars = 5 - $stars; $emptyStars > 0; $emptyStars--)
                            {
                                $starString .= '&#9734;';
                            }

                            echo $starString;
                            ?>
                        </h4>
                        <p><?php echo $row['reviewText'] ?></p>
                    </div>

                    <?php
                }
                ?>
            </div>
        </div>
    </div>
</div>
<?php
require_once 'snippets/volgaFooter.php';
?>
</body>
</html>