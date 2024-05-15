<!--
This file is the "main" program, so to speak. You can see that all of the
"sub-pages" are included here.
-->
<!DOCTYPE html>
<html lang="en">

<?php include_once 'config/config.php' ?>

<?php include_once 'src/stems/head.php' ?>

<body>

<!-- This is where the page title shows up -->
<?php include_once 'src/stems/header.php' ?>

<!-- This is where the yop menu shows up -->
<?php include_once 'src/stems/desc.php'; ?>

<!-- This is the main content opf the page -->
<div class="row">
    <?php include_once 'src/stems/content-left.php' ?>
    <?php include_once 'src/stems/content-right.php' ?>
</div>

<?php include_once 'src/stems/footer.php' ?>

</body>

</html>
