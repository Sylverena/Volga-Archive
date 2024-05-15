<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Temperature converter</title>
</head>
<style>
    p, label, button, h3 {
        font-family: "Fira Sans", Trebuchet, sans-serif;
    }
</style>
<body style="background-color: #C3B1E1">
<div style="background-color: lavender; text-align: center; width: 50vw; margin: 0 auto; padding: 2%">
    <h1 style="font-family: 'Fira Sans ExtraBold',sans-serif; color: slateblue">Temperature converter</h1>
    <h2 style="font-family: 'Fira Sans Medium', sans-serif">This program converts one temperature unit to another</h2>
    <form style="margin-top: 3em; text-align: left;" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
        <label for="temp">Enter Original temperature: <input type="text" id="temp" name="temp">&nbsp;</label>
        <label for="fahrenheit">Fahrenheit<input type="radio" name="temptype" id="fahrenheit" value="fahrenheit">|</label>
        <label for="celsius">Celsius<input type="radio" name="temptype" id="celsius" value="celsius">|</label>
        <label for="kelvin">Kelvin<input type="radio" name="temptype" id="kelvin" value="kelvin"></label><br><br>

        <p style="display: inline;">Unit to convert to: </p>
        <label for="convert-fahrenheit">Fahrenheit<input type="radio" name="convert-temptype" id="convert-fahrenheit" value="fahrenheit">|</label>
        <label for="convert-celsius">Celsius<input type="radio" name="convert-temptype" id="convert-celsius" value="celsius">|</label>
        <label for="convert-kelvin">Kelvin<input type="radio" name="convert-temptype" id="convert-kelvin" value="kelvin"></label><br><br>
        <button type="submit">Submit</button>
    </form>

    <div style="margin-top: 5em">
        <h3>
            <?php
            function convert($temperature, $type, $convertType)
            {
                if ($type == $convertType)
                    return $temperature;

                switch ($type)
                {
                    case 'fahrenheit':
                        if($convertType == 'celsius')
                            return ($temperature - 32) * (5/9) . getSuffix($convertType);
                        else
                            return ($temperature - 32) * (5/9) + 273.15 . getSuffix($convertType);
                    case 'celsius':
                        if($convertType == 'fahrenheit')
                            return ($temperature * (9/5)) + 32 . getSuffix($convertType);
                        else
                            return ($temperature + 273.15) . getSuffix($convertType);
                    case 'kelvin':
                        if ($convertType == 'fahrenheit')
                            return ($temperature - 273.15) * (9/5) + 32 . getSuffix($convertType);
                        else
                            return ($temperature - 273.15) . getSuffix($convertType);
                    default:
                        return null;
                }
            }

            function getSuffix($tempUnit)
            {
                switch ($tempUnit)
                {
                    case 'fahrenheit':
                        return 'F';
                    case 'celsius':
                        return 'C';
                    case 'kelvin':
                        return 'K';
                    default:
                        return null;
                }
            }

            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $preTemp = $_REQUEST['temp'];
                $preType = $_REQUEST['temptype'];

                $suffix = getSuffix($preType);

                $postType = $_REQUEST['convert-temptype'];

                if (empty($preTemp) || empty($preType) || empty($postType))
                    echo "Fields are empty";
                else
                {
                    echo "Converted temperature: " . $preTemp . $suffix . " = " . convert($preTemp, $preType, $postType);
                }
            }
            ?>
        </h3>
    </div>
</div>
</body>
</html>