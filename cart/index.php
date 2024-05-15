<?php
require_once dirname(__DIR__) . "/cart/ShoppingCart.php";
require_once dirname(__DIR__) . "/cart/CartItem.php";
require_once dirname(__DIR__) . "/scripts/php/functions/sanitizeInput.php";

if (session_status() === PHP_SESSION_NONE)
{
    session_start();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_SESSION['cart']) && $_SESSION['cart'] instanceof ShoppingCart)
{
    if ($_POST['sender'] === 'update' && is_numeric($_POST['quantity']) && is_numeric($_POST['item-index']) && $_POST['item-index'] < $_SESSION['cart']->itemCount())
    {
        $itemIndex = $_POST['item-index'];
        $newQuantity = max($_POST['quantity'], 1);
        $newQuantity = min($_POST['quantity'], 99);

        $_SESSION['cart']->changeQuantity($itemIndex, $newQuantity);
    }
    else if ($_POST['sender'] === 'remove' && is_numeric($_POST['item-index']) && $_POST['item-index'] < $_SESSION['cart']->itemCount())
    {
        $itemIndex = $_POST['item-index'];

        $_SESSION['cart']->removeItem($itemIndex);

        if ($_SESSION['cart']->itemCount() == 0)
        {
            unset($_SESSION['cart']);
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Volga Cart</title>
    <link type="text/css" rel="stylesheet" href="/styles/main.css">
    <link type="text/css" rel="stylesheet" href="/styles/flexstyle.css">
    <script src="/scripts/js/cart/CartAdd.js"></script>
</head>
<body>
<?php
require_once dirname(__DIR__) . "/snippets/volgaHeader.php";
?>
<div class="volga-register">
    <h1>Volga Cart.</h1>
    <hr style="margin-bottom: 2em">
    <?php
    if (!isset($_SESSION['cart']) || !$_SESSION['cart'] instanceof ShoppingCart)
    {
        ?>
        <div class="flex-row-container">
            <div class="flex-row">
                <h2 class="center">Your cart is empty.</h2>
            </div>
        </div>
        <?php
    } else
    {
        $cart = $_SESSION['cart']->get_cart_items();
        $index = 0;
        foreach ($cart as $item)
        {
        ?>
        <div class="flex-row-container">
            <div class="flex-row">
                <table style="border-spacing: .5em;">
                    <tbody>
                    <tr>
                        <td><img src="/images/bookicons/<?php echo $item->getImageFilename()?>" style="width: 5em" alt="<?php echo $item->getTitle() ?> cover"></td>
                        <td style="border-right: 1px solid black; width: 40%"><h2><?php echo $item->getTitle() ?></h2></td>
                        <td style="border-right: 1px solid black; width: 15%"><h3>By <?php echo $item->getAuthor() ?></h3>
                        </td>
                        <td><h4>$<?php echo number_format($item->getPrice() * $item->getQuantity(), 2) ?></h4></td>
                        <td style="border-right: 1px solid black; width: 20%">
                            <form method="post" target="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ?>">
                                <input type="hidden" name="sender" value="update">
                                <input type="hidden" name="item-index" value="<?php echo $index?>">
                                <label for="quantity"><input id="quantity" min="1" max="99" name="quantity" type="number" value="<?php echo $item->getQuantity() ?>">&nbsp;Quantity</label>
                                <button type="submit">Update</button>
                            </form>
                        </td>
                        <td>
                            <form method="post" target="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ?>">
                                <input type="hidden" name="sender" value="remove">
                                <input type="hidden" name="item-index" value="<?php echo $index?>">
                                <button type="submit">Remove from Cart</button>
                            </form>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <?php
            $index++;
        }
    } ?>
    <hr style="margin-top: 2em">
    <table style="margin: 1em auto 1em 80%; border-spacing: 2em 0">
        <tbody>
        <tr>
            <td><p>Subtotal</p></td>
            <td><p>$ <?php echo isset($_SESSION['cart']) ? number_format($_SESSION['cart']->getTotalPrice(), 2) : '0.00'?></p></td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
