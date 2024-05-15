<div class="column right">
    <p>Ciphertext: </p>
    <?php if ( $_SERVER['REQUEST_METHOD'] == 'GET' ) { ?>
    <div id="ciphertext">Your cipher will appear here.</div>
    <?php } elseif ( $_SERVER['REQUEST_METHOD'] == 'POST' ) { ?>
    <div id="ciphertext"><?php echo encrypt() ?></div>
    <?php } ?>
</div>
