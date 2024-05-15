$(document).ready(function ()
{
    $('#review-text').keyup(function ()
    {
        let characterCount = $(this).val().length;
        let countChar = $('#count-char');

        countChar.html(2000 - characterCount);

        if (countChar.html() < 1)
        {
            countChar.css('color', 'red');
        }
        else
        {
            countChar.css('color', 'inherit');
        }
    });

    /*$('#review-form').submit(function ()
    {
        if ()
    });*/
});
