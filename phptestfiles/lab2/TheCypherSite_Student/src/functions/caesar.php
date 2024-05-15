<?php
/**
 * caesarCipher is an implementation of the Caesar cipher.
 * @param string $plaintext The text to be encrypted.
 * @param int $shiftAmount The amount to shift.
 * @return string The encrypted string.
 */
function caesarCipher(string $plaintext, int $shiftAmount): string
{
    $output = "";

    // Loop through each character in the string
    for ($i = 0; $i < strlen($plaintext); $i++)
    {
        $char = $plaintext[$i];

        // If the character is a letter, shift it by the specified amount
        if (ctype_alpha($char))
        {
            // Determine whether to shift forward or backward
            $shift_direction = $shiftAmount >= 0 ? 1 : -1;

            // Shift the character by the specified amount
            $char = chr((ord($char) - ord('A') + $shift_direction * $shiftAmount + 26) % 26 + ord('A'));
        }

        // Add the character to the output string
        $output .= $char;
    }
    return $output;
}

/*
 * Any local functions that you need should be implemented here. It is common
 * practice to prefix local, helper functions with an underscore.  For example,
 * _local_function().
 */
