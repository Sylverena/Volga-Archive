$(document).ready( function ()
{
    $('#login-form').submit(function ()
    {
        let isValid = true;
        let email = $("#email");
        let password = $("#password");

        if (email.val().length < 1 ||
            email.val().match(RegExp("^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$", "g")) === null)
        {
            $("label[for='email'] span").html("<span style='color: red; font-size: .5em'><br>Email invalid</span>");
            isValid = false;
        }

        if (password.val().length < 1  || password.val().match(RegExp("^[a-zA-Z0-9]+$", "g")) === null)
        {
            $("label[for='password'] span").html("<span style='color: red; font-size: .5em'><br>Password invalid</span>");
            isValid = false;
        }

        return isValid;
    });
});