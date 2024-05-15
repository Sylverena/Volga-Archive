$(document).ready(function ()
{
    $("#register-form").submit(function (event)
    {
        event.preventDefault();
        
        if (!isFilled())
        {
            return false;
        }

        if(!validation())
        {
            return false;
        }

        return fieldsMatch();


        function isFilled()
        {
            let isValid = true;
            if ($("#email").val().length < 1)
            {
                $("label[for='email'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#email-confirm").val().length < 1)
            {
                $("label[for='email-confirm'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#password").val().length < 1)
            {
                $("label[for='password'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#password-confirm").val().length < 1)
            {
                $("label[for='password-confirm'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#firstname").val().length < 1)
            {
                $("label[for='firstname'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#lastname").val().length < 1)
            {
                $("label[for='lastname'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#address1").val().length < 1)
            {
                $("label[for='address1'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#city").val().length < 1)
            {
                $("label[for='city'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#state :selected").text() === "Please select a state")
            {
                $("label[for='state'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#zip").val().length < 1)
            {
                $("label[for='zip'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#card-type :selected").text() === "Please select card type")
            {
                $("label[for='card-type'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#card-number").val().length < 1)
            {
                $("label[for='card-number'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#cardholder-name").val().length < 1)
            {
                $("label[for='cardholder-name'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#card-expmonth :selected").text() === "MM")
            {
                $("label[for='card-expmonth'] > span").html("* REQUIRED");
                isValid = false;
            }

            if ($("#card-expyear :selected").text() === "YY")
            {
                $("label[for='card-expyear'] > span").html("* REQUIRED");
                isValid = false;
            }

            return isValid;
        }

        function validation()
        {
            // ^[A-Z,a-z]+$ name regex
            // ^[a-z,A-Z,0-9]+$ password regex
            // ^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$ email regex
            // 	(^\d{5}$)|(^\d{9}$)|(^\d{5}-\d{4}$) ZIP regex

            let isValid = true;

            if($("#email").val().match(RegExp("^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$", "g")) === null)
            {
                isValid = false;
                $("label[for='email'] > span").html("* INVALID EMAIL");
            }

            if($("#password").val().match(RegExp("^[a-zA-Z0-9]+$", "g")) === null)
            {
                isValid = false;
                $("label[for='password'] > span").html("* PASSWORD CAN ONLY CONTAIN ALPHANUMERIC CHARACTERS");
            }

            if($("#firstname").val().match(RegExp("^[A-Za-z]+$", "g")) === null)
            {
                isValid = false;
                $("label[for='firstname'] > span").html("* NAME CAN ONLY CONTAIN LETTERS A-Z");
            }
            if($("#lastname").val().match(RegExp("^[A-Za-z]+$", "g")) === null)
            {
                isValid = false;
                $("label[for='lastname'] > span").html("* NAME CAN ONLY CONTAIN LETTERS A-Z");
            }

            if($("#city").val().match(RegExp("^[A-Za-z]+$", "g")) === null)
            {
                isValid = false;
                $("label[for='city'] > span").html("* CITY NAME CAN ONLY CONTAIN LETTERS A-Z");
            }

            if($("#zip").val().match(RegExp("(^\\d{5}$)|(^\\d{9}$)|(^\\d{5}-\\d{4}$)", "g")) === null)
            {
                isValid = false;
                $("label[for='zip'] > span").html("* ZIP CODE MUST BE VALID");
            }

            if($("#card-number").val().match(RegExp("^\\d{15,16}$", "g")) === null)
            {
                isValid = false;
                $("label[for='card-number'] > span").html("* CREDIT CARD MUST BE VALID");
            }

            if ($('#cardholder-name').val.match(RegExp("^[A-Za-z]+$", "g")) === null)
            {
                isValid = false;
                $("label[for='cardholder-name'] > span").html("* NAME MUST BE ALPHANUMERIC");
            }

            return isValid;
        }

        function fieldsMatch()
        {
            let isValid = true;
            if($("#email").val() !== $("#email-confirm").val())
            {
                isValid = false;
                $("label[for='email'] > span").html("* EMAILS MUST MATCH");
                $("label[for='email-confirm'] > span").html("* EMAILS MUST MATCH");
            }

            if($("#password").val() !== $("#password-confirm").val())
            {
                isValid = false;
                $("label[for='password'] > span").html("* PASSWORDS MUST MATCH");
                $("label[for='password-confirm'] > span").html("* PASSWORDS MUST MATCH");
            }

            return isValid;
        }
    });
});
