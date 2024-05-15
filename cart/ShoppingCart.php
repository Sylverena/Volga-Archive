<?php
//todo use this to implement shopping cart, implement some sort of data structure that contains cart items
require './CartItem.php';
class ShoppingCart
{
    private array $cartItems = array();

    function __construct(string $isbn, string $title, string $author, float $price, string $imageFilename, int $quantity = 1)
    {
        $this->cartItems[] = new CartItem($isbn, $title, $author, $price,  $imageFilename, $quantity);
    }

    /**
     * @return CartItem[]
     */
    function get_cart_items() : array
    {
        return $this->cartItems;
    }

    function addItem(string $isbn, string $title, string $author, float $price, string $imageFilename, int $quantity = 1) :void
    {
        $this->cartItems[] = new CartItem($isbn, $title, $author, $price,  $imageFilename, $quantity);
    }

    function removeItem(int $index) :void
    {
        unset($this->cartItems[$index]);
    }

    /**
     * @param int $index The index of the cart item to be changed
     * @param int $newQuantity The new quantity of items
     * @return bool True if successful, false if unsuccessful
     */
    function changeQuantity(int $index, int $newQuantity) :bool
    {
        $item = $this->cartItems[$index];
        if ($item instanceof CartItem)
        {
            $item->setQuantity($newQuantity);
            return true;
        }

        return false;
    }

    function getTotalPrice(): float
    {
        $items = $this->get_cart_items();
        $total = 0.0;
        foreach ($items as $item)
        {
            $total += $item->getPrice();
        }

        return number_format($total, 2);
    }

    /**
     * Returns the amount of items in this shopping cart instance
     * @return int
     */
    function itemCount() : int
    {
        return count($this->get_cart_items());
    }
}