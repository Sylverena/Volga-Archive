<?php

/*
 * "Import" your cipher functions here. You will need to do this or you will
 * not be able to call the functions.
 */
include_once 'src/functions/caesar.php';
include_once 'src/functions/substitution.php';
include_once 'src/functions/vigenere.php';

/**
 * encrypt is the main driver for the encryption functions.
 * Notice that there is some different syntax here that is not shown in the
 * book.
 *
 * As we discussed in class, PHP is a weakly-typed language. However, newer
 * versions of PHP (starting at version 7) support typing. For functions,
 * you can specify the types of function parameters as well as specify the
 * return type.
 *
 * @return string
 */
function encrypt(): string
{
    /*
     * Some things to think about as you code this function...
     * (1) Again, since PHP is so weakly-typed, checking the values of
     * variables is not quite as trivial as one might expect. The best
     * way to do this is to use empty() and isset().
     * (2) Remember that the input parameters come from the HTML form.
     * So, you need to get your inputs from _GET[] or _POST[].
     */

    // ToDo: write the encrypt() function here.
    // Check the value of $plaintext.
    // Check the valur of $algorithm
    // Call the appropriate function based on the value of $algorithm.
    // In all cases, return an error message string if there is an error.

    if (!isset($_POST['plaintext']))
        return 'Plaintext is empty';
    $plaintext = strip_tags($_POST['plaintext']);

    if (!isset($_POST['algorithm']))
        return 'No algorithm chosen';
    $algorithm = strip_tags($_POST['algorithm']);

    switch ($algorithm)
    {
        case 'caesar':
            if (!isset($_POST['shiftamount']))
                return 'Shift amount not set';
            return caesarCipher($plaintext, $_POST['shiftamount']);
        case 'substitution':
            return substitutionCipher($plaintext);
        case 'vigenere':
            if (!isset($_POST['key']))
                return 'Key not set';
            return vigenereCipher($plaintext, $_POST['key']);
        default:
            return 'Invalid cipher';
    }
}