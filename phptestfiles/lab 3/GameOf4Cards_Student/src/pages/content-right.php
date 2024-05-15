<!--
Todo: complete this.
This one is interesting! The right-column is for displaying the form that has
the "Pick a Card" button and the "Restart game" buttons. Which button is
displayed is dependent on whether a GET or POST request is made. Currently,
both are shown, but you will need to add code so that only one is shown at a
time, again, dependent on whether a GET or POST request is made.
-->
<div class="column right">
    <h2>The Coupon Collector’s Simulation.</h2>
    <p>Coupon collector is a classic statistics problem with many practical applications.
        The problem is to repeatedly pick objects from a set of objects and find out how
        many picks are needed for all the objects to be picked at least once.</p>
    <h2>Game of 4 Cards</h2>
    <p>A variation of the problem is to pick cards from a shuffled deck of 52 cards
        repeatedly, and find out how many picks are needed before you see one of each suit.
        Assume a picked card is placed back in the deck before picking another. Write a
        program to simulate the number of picks needed to get four cards from each suit
        and display the four cards picked (it is possible a card may be picked twice).</p>
    <hr>
    <p>Click the button below to play, by picking a card.</p>
    <form method="POST" action="<?php echo $_SERVER['PHP_SELF'] ?>">
        <input type="submit" value="Pick a card">
    </form>
    <?php
    if ($_SERVER['REQUEST_METHOD'] == 'POST')
    {
        ?>
        <form method="GET" action="<?php echo $_SERVER['PHP_SELF'] ?>">
            <input type="submit" value="Restart game">
        </form>
        <?php
    } ?>
</div>
