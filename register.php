<?php
if (session_status() === PHP_SESSION_NONE)
{
    session_start();
}
if (isset($_SESSION['userId']) || $_SESSION['authenticated'])
{
    header("Location: /dashboard/");
    die;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register for Volga</title>
    <link type="text/css" rel="stylesheet" href="styles/main.css">
    <script src="https://code.jquery.com/jquery-3.6.1.js"
            integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script src="scripts/js/help.js"></script>
    <script src="scripts/js/form.js"></script>
</head>
<body>
<?php
require_once 'snippets/volgaHeader.php';
?>
<h1 style="margin: 5vh 0 4vh 12vw; font-size: 5em">Register for Volga.</h1>
<?php
if (!empty($_GET['referrer']) && $_GET['referrer'] == 'invalidForm')
{
    ?>
    <div class="volga-register" style="background-color: pink"><h2 style="color: red">Form Invalid!</h2></div>
    <?php
} ?>
<div class="volga-register grid-container" style="grid-template-columns: auto 33vw">
    <div>
        <p><span style="color: red">*</span> = Required</p>
        <form id="register-form" method="post" action="registerComplete.php">
            <label for="email"><input name="emailAddress" id="email" type="text" required><span
                    style="color: red">*</span>&nbsp;Email
                Address</label>
            <label for="email-confirm"><input name="emailConfirm" id="email-confirm" type="text" required><span
                    style="color: red">*</span>&nbsp;Confirm
                Email Address</label>
            <hr>
            <label for="password"><input name="password" id="password" type="password" required><span
                    style="color: red">*</span>&nbsp;Password</label>
            <label for="password-confirm"><input name="passwordConfirm" id="password-confirm" type="password"
                                                 required><span
                    style="color: red">*</span>&nbsp;Confirm Password</label>
            <hr>
            <label for="firstname"><input name="firstName" id="firstname" required><span style="color: red">*</span>&nbsp;First
                Name</label>
            <label for="lastname"><input name="lastName" id="lastname" required><span style="color: red">*</span>&nbsp;Last
                Name</label>
            <label for="address1"><input name="address1" id="address1" required><span style="color: red">*</span>&nbsp;Address
                Line
                1</label>
            <label for="address2"><input name="address2" id="address2">&nbsp;&nbsp;Address Line 2</label>
            <label for="city"><input name="city" id="city" required><span style="color: red">*</span>&nbsp;City</label>
            <label for="state">
                <select name="state" id="state" required>
                    <optgroup label="">
                        <option hidden="" disabled="disabled" selected="selected" value="">Please select a state
                        </option>
                        <option value="AL">Alabama</option>
                        <option value="AK">Alaska</option>
                        <option value="AZ">Arizona</option>
                        <option value="AR">Arkansas</option>
                        <option value="CA">California</option>
                        <option value="CO">Colorado</option>
                        <option value="CT">Connecticut</option>
                        <option value="DE">Delaware</option>
                        <option value="DC">District Of Columbia</option>
                        <option value="FL">Florida</option>
                        <option value="GA">Georgia</option>
                        <option value="HI">Hawaii</option>
                        <option value="ID">Idaho</option>
                        <option value="IL">Illinois</option>
                        <option value="IN">Indiana</option>
                        <option value="IA">Iowa</option>
                        <option value="KS">Kansas</option>
                        <option value="KY">Kentucky</option>
                        <option value="LA">Louisiana</option>
                        <option value="ME">Maine</option>
                        <option value="MD">Maryland</option>
                        <option value="MA">Massachusetts</option>
                        <option value="MI">Michigan</option>
                        <option value="MN">Minnesota</option>
                        <option value="MS">Mississippi</option>
                        <option value="MO">Missouri</option>
                        <option value="MT">Montana</option>
                        <option value="NE">Nebraska</option>
                        <option value="NV">Nevada</option>
                        <option value="NH">New Hampshire</option>
                        <option value="NJ">New Jersey</option>
                        <option value="NM">New Mexico</option>
                        <option value="NY">New York</option>
                        <option value="NC">North Carolina</option>
                        <option value="ND">North Dakota</option>
                        <option value="OH">Ohio</option>
                        <option value="OK">Oklahoma</option>
                        <option value="OR">Oregon</option>
                        <option value="PA">Pennsylvania</option>
                        <option value="RI">Rhode Island</option>
                        <option value="SC">South Carolina</option>
                        <option value="SD">South Dakota</option>
                        <option value="TN">Tennessee</option>
                        <option value="TX">Texas</option>
                        <option value="UT">Utah</option>
                        <option value="VT">Vermont</option>
                        <option value="VA">Virginia</option>
                        <option value="WA">Washington</option>
                        <option value="WV">West Virginia</option>
                        <option value="WI">Wisconsin</option>
                        <option value="WY">Wyoming</option>
                    </optgroup>
                </select><span style="color: red">*</span>&nbsp;&nbsp;State
            </label>
            <label for="zip"><input name="zip" id="zip" required><span style="color: red">*</span>&nbsp;Zip
                Code</label>
            <hr>
            <label for="card-type">
                <select name="cardType" id="card-type" required>
                    <optgroup label="">
                        <option hidden="" disabled="disabled" selected="selected" value="">Please select card type
                        </option>
                        <option value="amex">American Express</option>
                        <option value="visa">Visa</option>
                        <option value="mastercard">MasterCard</option>
                        <option value="discover">Discover</option>
                    </optgroup>
                </select><span style="color: red">*</span>&nbsp;&nbsp;Card Type
            </label>
            <label for="card-number"><input name="cardNum" id="card-number" required><span
                    style="color: red">*</span>&nbsp;Card Number</label>
            <label for="cardholder-name"><input name="cardholderName" type="text" id="cardholder-name" required><span
                    style="color: red">*</span>&nbsp;Cardholder Name</label>
            <label style="display: inline-block; width: 30%; margin-top: 0" for="card-expmonth">
                <select name="expMonth" id="card-expmonth" required>
                    <option hidden="" disabled="disabled" selected="selected" value="">MM</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                </select><span style="color: red">*</span>&nbsp;Month&nbsp;&nbsp;&nbsp;/
            </label>
            <label for="card-expYear" style="display:inline-block; width: 30%; margin-top: 0">
                <select name="expYear" id="card-expYear">
                    <option hidden="" disabled="disabled" selected="selected" value="">YY</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="31">31</option>
                </select><span style="color: red">*</span>&nbsp;&nbsp;&nbsp;Year
            </label><br>
            <button type="submit" id="submit" style="margin-top: 2em;">Register</button>
        </form>
    </div>
    <div class="help-section">
        <p>&nbsp;</p>
        <p id="email-help" class="hidden">Enter your email address</p>
        <p id="email-confirm-help" class="hidden" style="margin-bottom: 1.5em">Confirm your email address</p>
        <p id="password-help" class="hidden">Enter a secure password</p>
        <p id="password-help-confirm" class="hidden" style="margin-bottom: 1.5em">Re-enter your password</p>
        <p id="firstname-help" class="hidden">Enter your first name</p>
        <p id="lastname-help" class="hidden">Enter your last name</p>
        <p id="address1-help" class="hidden">Enter the first line of your address</p>
        <p id="address2-help" class="hidden">Enter the second line of your address (if applicable)</p>
        <p id="city-help" class="hidden">Enter the city your address is listed under</p>
        <p id="state-help" class="hidden">Select your state your address is in</p>
        <p id="zip-help" class="hidden" style="margin-bottom: 1.5em">Enter your zip code your address is listed
            under</p>
        <p id="card-type-help" class="hidden">Select your credit card's type</p>
        <p id="card-number-help" class="hidden">Enter your credit card's number</p>
        <p id="cardholder-name-help" class="hidden">Enter the name of the cardholder as listed on the card</p>
        <p id="card-expyearmonth-help" class="hidden">Enter the expiration month and year as listed on the card</p>
    </div>
</div>
<?php
require_once 'snippets/volgaFooter.php';
?>
</body>
</html>