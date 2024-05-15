<?php
// Todo 3: Write this function
/**
 * This function is a wrapper around $_SESSION['page'].
 * @return string The value of $_SESSION['page']
 */
function getPageName() : string
{
    return $_SESSION['page'] ?? 'err';
}
