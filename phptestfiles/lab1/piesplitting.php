<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pie fairness calculator</title>
</head>
<style>
    p, label, button, h3 {
        font-family: "Fira Sans", Trebuchet, sans-serif;
    }
</style>
<body style="background-color: #C3B1E1">
<div style="background-color: lavender; text-align: center; width: 40vw; margin: 0 auto; padding: 2%">
    <h1 style="font-family: 'Fira Sans ExtraBold',sans-serif; color: slateblue">Slice of Pie</h1>
    <h2 style="font-family: 'Fira Sans Medium', sans-serif">This program determines whether it is possible to split a
        pie fairly</h2>
    <form style="margin-top: 3em; text-align: left;" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
        <label for="slices">Enter Slices: <input type="text" name="slices"></label><br>
        <label for="recipients">Enter recipients: <input name="recipients"></label><br>
        <label for="per-person">Enter slices per person: <input name="per-person"></label><br>
        <button type="submit">Submit</button>
    </form>

    <div style="margin-top: 5em">
        <h3>
            <?php
            function isFair($s, $r, $p)
            {
                if ($s >= $r * $p) {
                    return true;
                } else {
                    return false;
                }
            }

            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $slices = $_REQUEST['slices'];
                $recipients = $_REQUEST['recipients'];
                $perPerson = $_REQUEST['per-person'];
                if (empty($slices) || empty($recipients) || empty($perPerson)) {
                    echo "Fields are empty";
                } elseif (isFair($slices, $recipients, $perPerson))
                    echo "Can the Pie be split fairly? YES";
                else
                    echo "Can the Pie be split fairly? NO";
            }
            ?>
        </h3>
    </div>
</div>
</body>
</html>