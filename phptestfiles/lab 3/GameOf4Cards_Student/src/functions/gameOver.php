<?php
// Todo: Complete this function.
/**
 * gameOver - Function to determine if the game is over.
 * This function checks the "cards" session variable to see if each card suit
 * has been drawn.
 * @return bool True if game is over; false otherwise.
 */
function gameOver() : bool
{
    foreach ($_SESSION['cards'] as $i)
    {
        if ($i == 0)
            return false;
    }

    return true;
}
