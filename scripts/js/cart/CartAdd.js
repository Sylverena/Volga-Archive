$(document).ready(function ()
{
    $('#add-to-cart').submit(function (event)
    {
        event.preventDefault();
        let formData = $(this).serialize();

        $.ajax({
            url: '/cart/add-to-cart.php',
            type: 'POST',
            data: formData,
            success: function ()
            {
                $('#add-to-cart').after(
                    "<div class='success-box' id='add-success' style='margin: 2em .5em'>" +
                    "<p style='color: forestgreen'>Item added to cart.</p>" +
                    "</div>");

                $('#add-success').delay(2000).fadeOut(500, "swing",
                    function ()
                    {
                        $(this).remove();
                    });
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                if (jqXHR.status === 400)
                {
                    let data = JSON.parse(jqXHR.responseText)

                    $('#add-to-cart').after(
                        "<div class='error-box' id='cart-error' style='margin: 2em .5em'>" +
                        "<p style='color: red'>Error: " + data.message + "</p>" +
                        "</div>")

                    $('#cart-error').delay(2000).fadeOut(500, "swing",
                        function ()
                        {
                            $(this).remove()
                        });
                }
            }
        })
    });

    $('#quantity').change(function ()
    {
        if ($(this).val() < 1)
        {
            $(this).val(1);
        } else if ($(this).val() > 99)
        {
            $(this).val(99);
            $('#add-to-cart').after(
                "<div class='error-box' id='bulk-error' style='margin: 2em .5em'>" +
                "<p style='color: red'>Contact Volga to buy bulk.</p>" +
                "</div>")

            $('#bulk-error').delay(2000).fadeOut(500, "swing",
                function ()
                {
                    $(this).remove()
                });
        }
    });
});


