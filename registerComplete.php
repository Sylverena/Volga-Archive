<?php
$redirectHeader = "Location: /register.php";
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    require_once 'scripts/php/functions/sanitizeInput.php';

    function validateSanitizeForm(): bool
    {
        global $email, $emailConfirm, $password, $passwordConfirm, $firstName, $lastName, $address1, $address2, $city,
               $state, $zip, $cardType, $cardNum, $cardholderName, $expMonth, $expYear;

        $isValid = true;

        // Email Fields Validation
        if (empty($email) || strlen($email) > 255 || !filter_var($email, FILTER_VALIDATE_EMAIL) || $email !== $emailConfirm)
        {
            $isValid = false;
        } else
        {
            $email = filter_var($email, FILTER_SANITIZE_EMAIL);
        }

        // Password fields validation
        if (empty($password) || strlen($password) > 32 || !preg_match('/^[a-zA-Z0-9]+$/', $password) || $password !== $passwordConfirm)
        {
            $isValid = false;
        } else
        {
            $password = password_hash(sanitizeInput($password), PASSWORD_DEFAULT);
        }

        // First name validation
        if (empty($firstName) || strlen($firstName) > 32 || !preg_match('/^[A-Za-z]+$/', $firstName))
        {
            $isValid = false;
        } else
        {
            $firstName = ucfirst(sanitizeInput($firstName));
        }

        // Last Name validation
        if (empty($lastName) || strlen($lastName) > 32 || !preg_match('/^[A-Za-z]+$/', $lastName))
        {
            $isValid = false;
        } else
        {
            $lastName = ucfirst(sanitizeInput($lastName));
        }

        // Address 1 Validation
        if (empty($address1) || strlen($address1) > 100)
        {
            $isValid = false;
        } else
        {
            $address1 = sanitizeInput($address1);
        }

        $address2 = sanitizeInput($address2);

        // City validation
        if (empty($city) || strlen($city) > 35 || !preg_match('/^[a-zA-Z0-9]+$/', $city))
        {
            $isValid = false;
        } else
        {
            $city = ucfirst(sanitizeInput($city));
        }

        // State validation
        require 'scripts/php/functions/statesEnum.php';
        $stateValues = array_column(States::cases(), 'values');
        if (empty($state) && !in_array($state, $stateValues))
        {
            $isValid = false;
        } else
        {
            $state = strtoupper(sanitizeInput($state));
        }

        // Zip validation
        if (empty($zip) || !preg_match('/(^\d{5}$)|(^\d{9}$)|(^\d{5}-\d{4}$)/', $zip))
        {
            $isValid = false;
        } else
        {
            $zip = sanitizeInput($zip);
        }

        // Card type validation
        require 'scripts/php/functions/cardsEnum.php';
        $cardTypeValues = array_column(CardType::cases(), 'values');
        if (empty($cardType) || in_array($cardType, $cardTypeValues))
        {
            $isValid = false;
        } else
        {
            $cardType = sanitizeInput($cardType);
        }

        // Card Number validation
        if (empty($cardNum) || !preg_match('/^\d{15,16}$/', $cardNum))
        {
            $isValid = false;
        } else
        {
            $cardNum = sanitizeInput($cardNum);
        }

        // Cardholder name validation
        if (empty($cardholderName) || strlen($cardholderName) > 64
            || !preg_match('/^[a-zA-Z]+ [a-zA-Z]+( [a-zA-Z]+)?$/', $cardholderName))
        {
            $isValid = false;
        } else
        {
            $cardholderName = ucwords(sanitizeInput($cardholderName));
        }

        // Expiry Month Verification
        if (empty($expMonth) || (intval($expMonth) < 1 || intval($expMonth) > 12))
        {
            $isValid = false;
        } else
        {
            $expMonth = sanitizeInput($expMonth);
        }

        // Expiry year verification
        if (empty($expYear) || !preg_match('/^\d{2}$/', $expYear))
        {
            $isValid = false;
        } else
        {
            $expYear = sanitizeInput($expYear);
        }

        return $isValid;
    }

    //region POST variable assignments
    $email = trim($_POST['emailAddress']);
    $emailConfirm = trim($_POST['emailConfirm']);
    $password = trim($_POST['password']);
    $passwordConfirm = trim($_POST['passwordConfirm']);
    $firstName = trim($_POST['firstName']);
    $lastName = trim($_POST['lastName']);
    $address1 = trim($_POST['address1']);
    $address2 = trim($_POST['address2']);
    $city = trim($_POST['city']);
    $state = trim($_POST['state']);
    $zip = trim($_POST['zip']);
    $cardType = trim($_POST['cardType']);
    $cardNum = trim($_POST['cardNum']);
    $cardholderName = trim($_POST['cardholderName']);
    $expMonth = trim($_POST['expMonth']);
    $expYear = trim($_POST['expYear']);
    //endregion

    if (validateSanitizeForm())
    {
        $servername = 'localhost';
        $username = 'enduser';
        $dbpassword = '2[OisRACF[UxXNtq';

        $sqlConnection = new mysqli($servername, $username, $dbpassword, 'volga_db');

        // Check connection
        if ($sqlConnection->connect_error)
        {
            die("Connection failed: " . $sqlConnection->connect_error);
        }

        $stmt = $sqlConnection->prepare("CALL addUser(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, LAST_DAY(CONCAT('20', ?, '-', ?, '-01')))");

        $stmt->bind_param("ssssssssssssii", $email, $password, $firstName, $lastName, $address1,
            $address2, $city, $state, $zip, $cardType, $cardNum, $cardholderName, $expYear, $expMonth);
        $stmt->execute();
        $stmt->close();
        $sqlConnection->close();
    } else
    {
        header("$redirectHeader?referrer=invalidForm");
        die;
    }
} else
{
    header($redirectHeader);
    die;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Volga - Register Complete</title>
    <link type="text/css" rel="stylesheet" href="styles/main.css">
    <script src="https://code.jquery.com/jquery-3.6.1.js"
            integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script src="scripts/js/help.js"></script>
    <script src="scripts/js/form.js"></script>
</head>
<body>
<?php
require_once 'snippets/volgaHeader.php';
?>
<h1 style="margin-top: 5vh; font-size: 5em" class="center">Thank you.</h1>
<h2 style="font-size: 3em" class="center">For registering with Volga.</h2>
<h3 style="font-size: 1.5em" class="center"><a href="signIn.php">Sign in to Volga</a></h3>
<?php
require_once 'snippets/volgaFooter.php';
?>
</body>
</html>
