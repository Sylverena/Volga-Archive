<?php
/**
 * caesarCipher is an implementation of the Caesar cipher.
 * @param string $plaintext The text to be encrypted.
 * @param string $key The encryption key.
 * @return string The encrypted string.
 */
function vigenereCipher(string $plaintext, string $key): string
{
    $output = "";
    $key_len = strlen($key);
    $key_index = 0;

    // Loop through each character in the string
    for ($i = 0; $i < strlen($plaintext); $i++)
    {
        $char = $plaintext[$i];

        // If the character is a letter, encrypt or decrypt it using the key
        if (ctype_alpha($char))
        {
            // Determine the shift amount for this character based on the corresponding character in the key
            $key_char = $key[$key_index];
            $shift = ord(strtoupper($key_char)) - ord('A');

            // Increment or reset the key index as necessary
            $key_index++;
            if ($key_index == $key_len)
            {
                $key_index = 0;
            }

            // Shift the character by the appropriate amount
            $char = chr((ord(strtoupper($char)) - ord('A') + $shift) % 26 + ord('A'));

            // Determine the case of the original character and use the same case for the shifted character
            if (ctype_upper($plaintext[$i]))
            {
                $char = strtoupper($char);
            } else
            {
                $char = strtolower($char);
            }

            // Add the shifted character to the output string
        }
        $output .= $char;
    }
    return $output;
}

/*
 * Any local functions that you need should be implemented here. It is common
 * practice to prefix local, helper functions with an underscore.  For example,
 * _local_function().
 */
