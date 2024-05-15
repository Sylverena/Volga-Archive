<?php
/**
 * substitutionCipher is an implementation of a substitution cipher.
 * @param string $plaintext The text to be encrypted.
 * @return string The encrypted string.
 */
function substitutionCipher(string $plaintext): string
{
    $output = "";

    // Create an array of characters from the key
    $key_array = str_split('ewfknkefkushefksnfdj');

    // Loop through each character in the string
    for ($i = 0; $i < strlen($plaintext); $i++)
    {
        $char = $plaintext[$i];

        // If the character is a letter, substitute it using the key
        if (ctype_alpha($char))
        {
            // Determine the index of the character in the alphabet
            $char_index = ord(strtoupper($char)) - ord('A');

            // Substitute the character using the key
            $substitution_char = $key_array[$char_index];

            // Determine the case of the original character and use the same case for the substitution character
            if (ctype_upper($char))
            {
                $substitution_char = strtoupper($substitution_char);
            } else
            {
                $substitution_char = strtolower($substitution_char);
            }

            // Add the substitution character to the output string
            $output .= $substitution_char;
        } else
        {
            // Add the non-letter character to the output string
            $output .= $char;
        }
    }

    return $output;
}

/*
 * Any local functions that you need should be implemented here. It is common
 * practice to prefix local, helper functions with an underscore.  For example,
 * _local_function().
 */
