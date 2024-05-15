<!--
Todo: complete this.
The left-column is where the game state is displayed. The zero's in the
"*-card" span's need to be replaced with PHP echo commands to display the value
for each of the card suits. The same for number of picks in the "picks" span.
-->
<div class="column left">
    <p>
        <span id="club-card"><?php echo 0 + $_SESSION['cards']['clubs'] ?></span>
        <span> of </span>
        <img src="assets/images/club_24x24.png" alt="club">
    </p>
    <p>
        <span id="diamond-card"><?php echo 0 + $_SESSION['cards']['diamonds'] ?></span>
        <span> of </span>
        <img src="assets/images/diamond_24x24.png" alt="diamond">
    </p>
    <p>
        <span id="heart-card"><?php echo 0 + $_SESSION['cards']['hearts'] ?></span>
        <span> of </span>
        <img src="assets/images/heart_24x24.png" alt="heart">
    </p>
    <p>
        <span id="spade-card"><?php echo 0 + $_SESSION['cards']['spades'] ?></span>
        <span> of </span>
        <img src="assets/images/spade_24x24.png" alt="spade">
    </p>
    <p>Picks: <span id="picks"><?php echo 0 + $_SESSION['picks'] ?></span></p>
</div>
