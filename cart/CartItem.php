<?php
class CartItem
{
    private string $isbn;

    private string $title;

    private string $author;

    private float $price;

    private string $imageFilename;

    private int $quantity;

    function __construct(string $isbn, string $title, string $author, float $price, string $imageFilename, int $quantity = 1)
    {
        $this->isbn = $isbn;
        $this->title = $title;
        $this->author = $author;
        $this->price = $price;
        $this->imageFilename = $imageFilename;
        $this->quantity = $quantity;
    }

    //<editor-fold desc="Getters and setters">

    /**
     * @return string
     */
    public function getTitle(): string
    {
        return $this->title;
    }

    /**
     * @return string
     */
    public function getAuthor(): string
    {
        return $this->author;
    }

    /**
     * @return float
     */
    public function getPrice(): float
    {
        return $this->price;
    }

    /**
     * @return string
     */
    public function getImageFilename(): string
    {
        return $this->imageFilename;
    }

    /**
     * @return int
     */
    public function getQuantity(): int
    {
        return $this->quantity;
    }

    /**
     * @param int $quantity
     */
    public function setQuantity(int $quantity): void
    {
        $this->quantity = $quantity;
    }

    /**
     * @return string
     */
    public function getIsbn(): string
    {
        return $this->isbn;
    }
    //</editor-fold>
}