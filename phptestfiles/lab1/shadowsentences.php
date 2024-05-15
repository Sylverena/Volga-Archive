<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shadow Sentences</title>
</head>
<style>
    p, label, button, h3 {
        font-family: "Fira Sans", Trebuchet, sans-serif;
    }
</style>
<body style="background-color: #C3B1E1">
<div style="background-color: lavender; text-align: center; width: 40vw; margin: 0 auto; padding: 2%">
    <h1 style="font-family: 'Fira Sans ExtraBold',sans-serif; color: slateblue">Shadow Sentence</h1>
    <h2 style="font-family: 'Fira Sans Medium', sans-serif">This program determines  if 2 sentences are shadow sentences,
    i.e. they have the same length per word but do not share any common letters per word</h2>
    <form style="margin-top: 3em; text-align: left;" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
        <label for="slices">Enter Sentence 1: <input type="text" name="sentence1"></label><br>
        <label for="recipients">Enter Sentence 2: <input name="sentence2"></label><br>
        <button type="submit">Submit</button>
    </form>

    <div style="margin-top: 5em">
        <h3>
            <?php

            function shadowSentence($sentence1, $sentence2)
            {
                $sentence1 = explode(' ', $sentence1);
                $sentence2 = explode(' ', $sentence2);

                if (sizeof($sentence1) != sizeof($sentence2)) {
                    return false;
                }

                for ($i = 0; $i < sizeof($sentence1); $i++) {

                    if(strlen($sentence1[$i]) != strlen($sentence2[$i]))
                        return false;

                    $sentence1Split = str_split($sentence1[$i]);
                    $sentence2Split = str_split($sentence2[$i]);



                    foreach ($sentence1Split as $char)
                    {
                        if (in_array($char, $sentence2Split))
                            return false;
                    }

                    foreach ($sentence2Split as $char)
                    {
                        if (in_array($char, $sentence1Split))
                            return false;
                    }
                }

                return true;
            }

            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $sentence1 = strtolower($_REQUEST['sentence1']);
                $sentence2 = strtolower($_REQUEST['sentence2']);

                echo "Shadow Sentences? ";
                if(shadowSentence($sentence1, $sentence2))
                {
                    echo "YES";
                }
                else
                {
                    echo "NO";
                }
            }
            ?>
        </h3>
    </div>
</div>
</body>
</html>