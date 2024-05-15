<?php
// Todo: Complete this function.
/**
 * pickCard - Pick/draw a card from the "deck"
 * This function uses rand() to randomly generate a card (1-52). Next, figure
 * out the rank and finally, figure out the suit. The key is to remember that
 * there are 13 cards of each suit!
 * @return string The picked card of the form "value of suit".
 */
function pickCard() : string
{
    $card = rand(1, 52);

    $card_rank = (($card - 1) % 13) + 1;
    if ($card_rank == 1) {
        $card_rank = 'Ace';
    } elseif ($card_rank == 11) {
        $card_rank = 'Jack';
    } elseif ($card_rank == 12) {
        $card_rank = 'Queen';
    } elseif ($card_rank == 13) {
        $card_rank = 'King';
    }

    $card_suit = ceil($card / 13);
    if ($card_suit == 1) {
        $card_suit = 'Clubs';
    } elseif ($card_suit == 2) {
        $card_suit = 'Diamonds';
    } elseif ($card_suit == 3) {
        $card_suit = 'Hearts';
    } elseif ($card_suit == 4) {
        $card_suit = 'Spades';
    }

    return "$card_suit of $card_rank";
}