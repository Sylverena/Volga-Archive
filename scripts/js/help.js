$(document).ready(function ()
{
    // For email help message hiding and showing on input focus
    $("#email").focus(function ()
    {
        $("#email-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#email-help").addClass("hidden");
    });

    $("#email-confirm").focus(function ()
    {
        $("#email-confirm-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#email-confirm-help").addClass("hidden");
    });

    // For Password help message hiding and showing on input focus
    $("#password").focus(function ()
    {
        $("#password-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#password-help").addClass("hidden");
    });

    $("#password-confirm").focus(function ()
    {
        $("#password-help-confirm").removeClass("hidden");
    }).blur(function ()
    {
        $("#password-help-confirm").addClass("hidden");
    });

    // For Firstname and lastname help message hiding and showing on input focus
    $("#firstname").focus(function ()
    {
        $("#firstname-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#firstname-help").addClass("hidden");
    });

    $("#lastname").focus(function ()
    {
        $("#lastname-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#lastname-help").addClass("hidden");
    });

    // For Address help message hiding and showing on input focus
    $("#address1").focus(function ()
    {
        $("#address1-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#address1-help").addClass("hidden");
    });

    $("#address2").focus(function ()
    {
        $("#address2-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#address2-help").addClass("hidden");
    });

    // For City help message hiding and showing on input focus
    $("#city").focus(function ()
    {
        $("#city-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#city-help").addClass("hidden");
    });

    // For state help message hiding and showing on input focus
    $("#state").focus(function ()
    {
        $("#state-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#state-help").addClass("hidden");
    });

    // For zip help message hiding and showing on input focus
    $("#zip").focus(function ()
    {
        $("#zip-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#zip-help").addClass("hidden");
    });

    // For card type help message hiding and showing on input focus
    $("#card-type").focus(function ()
    {
        $("#card-type-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#card-type-help").addClass("hidden");
    });

    $("#card-number").focus(function ()
    {
        $("#card-number-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#card-number-help").addClass("hidden");
    });

    $("#cardholder-name").focus(function ()
    {
        $("#cardholder-name-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#cardholder-name-help").addClass("hidden");
    });

    $("#card-expmonth").focus(function ()
    {
        $("#card-expyearmonth-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#card-expyearmonth-help").addClass("hidden");
    });

    $("#card-expyear").focus(function ()
    {
        $("#card-expyearmonth-help").removeClass("hidden");
    }).blur(function ()
    {
        $("#card-expyearmonth-help").addClass("hidden");
    });
});
