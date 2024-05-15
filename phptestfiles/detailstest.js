$(document).ready(function ()
{
    $(window).addEventListener("hashchange", () => {
        let hash = location.hash.substring(1);

        if (hash) {
            let detailsBox = $(`#${hash}`);

            if (detailsBox && detailsBox.is('details')) {
                if (detailsBox.parent('details'))
                    detailsBox.parent('details').attr('open', '');
                detailsBox.attr('open', '');
                detailsBox.get(0).scrollIntoView({behavior: 'smooth'});
            }
        }
    });
});