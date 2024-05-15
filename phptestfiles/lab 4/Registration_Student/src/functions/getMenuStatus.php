<?php
// Todo 1: Write this function
/**
 * This function determines whether a menu item is active by checking the
 * parameter against the associated session variable.
 *
 * @param int $menuItem An integer number representing the menu item.
 * @return string 'class="active"' if the menu item corresponds to the session
 * variable; Empty string otherwise.
 */
function getMenuStatus ( int $menuItem ) : string
{
    // debug: var_dump($_SESSION['menuItemActive']);

    if ($_SESSION['menuItemActive'] == $menuItem)
        return 'class="active"';
    else
        return '';
    /*switch ( $menuItem )
    {
        case 1: // Home
            // Check the menuItemActive session variable...
            if ($_SESSION['menuItemActive'] == 1)
                return 'class="active"';
            break;


        // Other cases do the same but for their corresponding menu item

        default:
            $retval = '';
    }*/
}