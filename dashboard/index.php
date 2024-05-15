<?php
$redirectHeader = "/signIn.php";
if (session_status() === PHP_SESSION_NONE)
{
    session_start();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST')
{

    require_once dirname(__DIR__) . "/scripts/php/functions/sanitizeInput.php";

    function validateSanitizeLogin(): bool
    {
        global $email, $password;

        $isValid = true;

        if (empty($email) || strlen($email) > 255 || !filter_var($email, FILTER_VALIDATE_EMAIL))
        {
            $isValid = false;
        } else
        {
            $email = filter_var($email, FILTER_SANITIZE_EMAIL);
        }

        if (empty($password) || strlen($password) > 32 || !preg_match('/^[a-zA-Z0-9]+$/', $password))
        {
            $isValid = false;
        } else
        {
            $password = sanitizeInput($password);
        }

        return $isValid;
    }

    $email = $_POST['email'];
    $password = $_POST['password'];

    if (validateSanitizeLogin())
    {
        require_once dirname(__DIR__) . "/scripts/php/getSqlConnection.php";

        $sqlConnection = getSqlConnection();

        $stmt = $sqlConnection->prepare("call getUser(?)");
        $stmt->bind_param("s", $email);
        $stmt->execute();

        $userResultSet = $stmt->get_result();
        do
        {
            $stmt->next_result();
        } while ($stmt->more_results());

        $stmt->close();
        $sqlConnection->close();

        if ($userResultSet->num_rows == 0)
        {
            header("Location: $redirectHeader?referrer=invalidForm");
            die;
        }

        $user = $userResultSet->fetch_assoc();

        $userId = $user['userId'];
        $encryptedPassword = $user['password'];

        if (password_verify($password, $encryptedPassword))
        {
            session_unset();
            session_destroy();
            session_start();
            $_SESSION['userId'] = $userId;
            $_SESSION['authenticated'] = true;
        }
        else
        {
            header("Location: $redirectHeader?referrer=invalidForm");
            die();
        }
    } else
    {
        header("Location: $redirectHeader?referrer=invalidForm");
        die();
    }
}

if (!isset($_SESSION['userId']) || !$_SESSION['authenticated'])
{
    header("Location: $redirectHeader");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Volga Dashboard</title>
    <link type="text/css" rel="stylesheet" href="/styles/main.css">
    <script src="https://code.jquery.com/jquery-3.6.1.js"
            integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
</head>
<body>
<?php

require_once dirname(__DIR__) . "/scripts/php/getSqlConnection.php";
$sqlConnection = getSqlConnection();

$stmt = $sqlConnection->prepare("call getUserDemographics(?)");
$stmt->bind_param("i", $_SESSION['userId']);
$stmt->execute();

$userResultSet = $stmt->get_result();
do
{
    $stmt->next_result();
} while ($stmt->more_results());

$user = $userResultSet->fetch_assoc();

$stmt->close();
$sqlConnection->close();

$_SESSION['name'] = $user['firstName'];
require_once dirname(__DIR__) . "/snippets/volgaHeader.php";
?>
<h1 style="margin: 5vh 0 4vh 12vw; font-size: 4em">Volga Dashboard.</h1>
<hr style="width: 90%">
<h2 style="font-size: 3em; margin-left: 12vw">Welcome, <?php echo $user['firstName']?>.</h2>
<div class="volga-register" style="background-color: whitesmoke">
    <h3>Account Information:</h3>
    <table class="indent" style="width: 25%">
        <tbody>
        <tr>
            <td><p>First Name:</p></td>
            <td><p><?php echo $user['firstName'];?></p></td>
        </tr>
        <tr>
            <td><p>Last Name:</p></td>
            <td><p><?php echo $user['lastName'];?></p></td>
        </tr>
        <tr>
            <td><p>Address Line 1: </p></td>
            <td><p><?php echo $user['address1'];?></p></td>
        </tr>
        <tr>
            <td><p>Address Line 2: </p></td>
            <td><p><?php echo $user['address2'] ?? '';?></p></td>
        </tr>
        <tr>
            <td><p>City: </p></td>
            <td><p><?php echo $user['city'];?></p></td>
        </tr>
        <tr>
            <td><p>State: </p></td>
            <td><p><?php echo $user['state'];?></p></td>
        </tr>
        <tr>
            <td><p>Zip Code: </p></td>
            <td><p><?php echo $user['zip'];?></p></td>
        </tr>
        <tr>
            <td><p>Card number: </p></td>
            <td><p>Ending in <?php echo substr($user['cardNumber'], -4,4);?></p></td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>