<?php
// Todo: Complete this function.

include_once 'src/functions/pickCard.php';
include_once 'src/functions/gameOver.php';

/**
 * updateGame - updates the game.
 * This function draws a card from the "deck", tokenizes it and updates the
 * cards session variable with the newly drawn card.  It also increments the
 * picks variable. Remember to store the "cards" and "picks" in the session
 * variable you initialized in initGame(). Also, this function should only
 * update the game if the game is not over.
 * @return void
 */
function updateGame(): void
{
    if (gameOver())
    {
        return;
    }

    $card = pickCard();

    if (str_contains($card, 'Diamonds'))
        $_SESSION['cards']['diamonds']++;
    else if (str_contains($card, 'Hearts'))
        $_SESSION['cards']['hearts']++;
    else if (str_contains($card, 'Clubs'))
        $_SESSION['cards']['clubs']++;
    else if (str_contains($card, 'Spades'))
        $_SESSION['cards']['spades']++;

    $_SESSION['picks']++;
}
