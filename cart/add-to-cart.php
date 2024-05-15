<?php
require_once 'ShoppingCart.php';
if (session_status() === PHP_SESSION_NONE)
{
    session_start();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $response = array();
    if (!isset($_POST['isbn']) || !isset($_POST['quantity']) || !is_numeric($_POST['quantity']))
    {
        $response['error'] = true;
        $response['message'] = 'Invalid item data';
        http_response_code(400);
        echo json_encode($response);
        die;
    }

    require_once dirname(__DIR__) . "/scripts/php/functions/sanitizeInput.php";
    $isbn = sanitizeInput($_POST['isbn']);
    $quantity = sanitizeInput($_POST['quantity']);

    if ($quantity < 1 || $quantity > 99)
    {
        $response['error'] = true;
        $response['message'] = 'Quantities must be 1-99. Contact Volga for bulk sales.';
        http_response_code(400);
        echo json_encode($response);
        die;
    }

    require_once dirname(__DIR__) . "/scripts/php/getSqlConnection.php";

    $sqlConnection = getSqlConnection();

    $stmt = $sqlConnection->prepare("call getBookInfo(?)");
    $stmt->bind_param("s", $isbn);
    $stmt->execute();
    $resultSet = $stmt->get_result();

    $stmt->close();
    $sqlConnection->close();

    if ($resultSet->num_rows < 1)
    {
        $response['error'] = true;
        $response['message'] = 'Book not found in Volga.';
        http_response_code(404);
        echo json_encode($response);
        die;
    }

    $resultsArray = $resultSet->fetch_assoc();

    if (!isset($_SESSION['cart']))
    {
        $_SESSION['cart'] = new ShoppingCart($isbn, $resultsArray['title'], $resultsArray['compositeName'],
            $resultsArray['price'], $resultsArray['imageFilename'], $quantity);
    } else if ($_SESSION['cart'] instanceof ShoppingCart)
    {
        $_SESSION['cart']->addItem($isbn, $resultsArray['title'], $resultsArray['compositeName'],
            $resultsArray['price'], $resultsArray['imageFilename'], $quantity);
    } else
    {
        $response['error'] = true;
        $response['message'] = 'Unknown error has occurred';
        http_response_code(400);
        echo json_encode($response);
        die;
    }

    $response['status'] = 'success';
    $response['message'] = 'Item added successfully';
    echo json_encode($response);
    exit;
} else
{
    http_response_code(400);
    die;
}
