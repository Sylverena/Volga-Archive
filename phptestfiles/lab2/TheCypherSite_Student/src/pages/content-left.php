<div class="column left">
    <h3>Plaintext</h3>
    <form method="POST" action="">
        <p>(1) Enter your plaintext.</p>

        <p><label for="plaintext">Plaintext: </label>
            <input type="text" name="plaintext" size="25"></p>

        <p>(2) Select your algorithm and parameter, if needed.</p>
        <p><input type="radio" id="caesar" name="algorithm" value="caesar">
            <label for="caesar">Caesar</label>&nbsp;&nbsp;&nbsp;&nbsp;
            <label for="shiftamount">Shift amount: </label>
            <input type="text" id="shiftamount" name="shiftamount" size="3"></p>
        <p><input type="radio" id="substitution" name="algorithm" value="substitution">
            <label for="substitution">Substitution</label></p>
        <p><input type="radio" id="vigenere" name="algorithm" value="vigenere">
            <label for="vigenere">Vigenere</label>&nbsp;&nbsp;&nbsp;&nbsp;
            <label for="key">Key: </label>
            <input type="text" id="key" name="key" size="10"></p>

        <p>(3) Click the Encrypt button.</p>
        <p><input type="submit" value="Encrypt!"></p>
    </form>
</div>
