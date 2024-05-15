<?php
// Todo: Complete this function.
/**
 * initGame - Initialize the game
 * This function initializes the game. The game states is stored in the global
 * $_SESSION variable rather than global PHP variables. Use an associative
 * array to store the suits for the drawn cards. The second state to store is
 * the number of picked (drawn) cards.
 * @return void
 */
function initGame()
{
    $_SESSION['cards'] = array(
        "diamonds" => 0,
        "hearts" => 0,
        "clubs" => 0,
        "spades" => 0
    );

    $_SESSION['picks'] = 0;
}