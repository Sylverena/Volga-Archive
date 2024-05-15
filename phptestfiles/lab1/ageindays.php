<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Age in days calculator</title>
</head>
<style>
    p, label, button, h3 {
        font-family: "Fira Sans", Trebuchet, sans-serif;
    }
</style>
<body style="background-color: #C3B1E1">
<div style="background-color: lavender; text-align: center; width: 40vw; margin: 0 auto; padding: 2%">
    <h1 style="font-family: 'Fira Sans ExtraBold',sans-serif; color: slateblue">Calculate age in days</h1>
    <h2 style="font-family: 'Fira Sans Medium', sans-serif">This program takes age in years and displays it in number of
        days</h2>
    <form style="margin-top: 3em" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
        <label for="age">Enter Age: <input name="age"></label>
        <button type="submit">Submit</button>
    </form>
    <div style="margin-top: 5em">
        <h3>
            <?php
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $age = $_REQUEST['age'];
                if (empty($age)) {
                    echo "Name field is empty";
                } else {
                    echo "Your age, " . $age . " in days is " . $age * 365 . " in days";
                }
            }
            ?>
        </h3>
    </div>
</div>
</body>
</html>