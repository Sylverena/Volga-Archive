<!--
This file has the HTML & PHP necessary to display the top navigation menu.
This file uses the getMenuStatus() function to show whether the menu item is
selected or not.

The two spans are the icon (which is a font defined in styles.css) and the
word associated with the menu item.

Todo 2: Make the spans clickable by adding anchors around the spans.
The anchors need to call the getMenuStatus() function to highlight the menu
item or not.  Also, the href needs to call index.php with the correct
"command".
 -->
<?php include_once 'src/functions/getMenuStatus.php'; ?>
<div class="desc">
    <ul class="topnav">
        <li>
            <a href="./index.php?c=home" <?php echo getMenuStatus(1) ?>><span class="material-symbols-outlined">home</span><br>
                <span>Home</span></a>
        </li>
        <li>
            <a href="./index.php?c=student" <?php echo getMenuStatus(2) ?>><span class="material-symbols-outlined">person</span><br>
                <span>Student</span></a>
        </li>
        <li>
            <a href="./index.php?c=course" <?php echo getMenuStatus(3) ?>><span class="material-symbols-outlined">school</span><br>
                <span>Course</span></a>
        </li>
        <li>
            <a href="./index.php?c=campus" <?php echo getMenuStatus(4) ?>><span class="material-symbols-outlined">apartment</span><br>
                <span>Campus</span></a>
        </li>
        <li style="float: right">
            <a href="./index.php?c=about" <?php echo getMenuStatus(5) ?>><span class="material-symbols-outlined">help_center</span><br>
                <span>About</span></a>
        </li>
    </ul>
</div>
