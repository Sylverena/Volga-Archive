<?php
if (session_status() === PHP_SESSION_NONE)
{
    session_start();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Volga - About us</title>
    <link type="text/css" rel="stylesheet" href="styles/main.css">
    <link type="text/css" rel="stylesheet" href="styles/headerstyle.css">
    <link type="text/css" rel="stylesheet" href="styles/footerstyle.css">
</head>
<body>
<?php
require_once 'snippets/volgaHeader.php';
?>
<div class="container">
    <h1 class="center" style="font-size: 5em">Volga: The Leader in Literature Distribution</h1>
    <p style="font-size: 2em">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in aliquet nisl.
        Suspendisse vestibulum convallis risus, vitae pellentesque nisl pretium nec. Vestibulum cursus quam sit amet
        sem malesuada, sit amet venenatis leo placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices
        posuere cubilia curae; Curabitur a pharetra erat, at malesuada turpis.</p>
    <p style="font-size: 2em">Quisque viverra malesuada viverra. Maecenas elit sapien, ultrices vitae lectus in,
        bibendum suscipit dui. Nulla sed diam vulputate nibh rhoncus euismod.
        Morbi malesuada libero nec malesuada condimentum. Aenean mi libero, consectetur et mollis quis, tristique non
        felis. Quisque nisi ligula, tristique vel felis finibus, placerat efficitur nisi.
        Duis convallis consequat urna, et ullamcorper nulla viverra a. Vestibulum ante ipsum primis in faucibus orci
        luctus et ultrices posuere cubilia curae; Cras congue orci eu felis vulputate, vitae
        fermentum purus dignissim. Integer sodales massa ac nunc sagittis laoreet. Morbi quis iaculis sapien.</p>
    <p style="font-size: 2em">Suspendisse consectetur egestas tortor vel lobortis. Nulla convallis blandit nunc non
        gravida. Nullam porttitor ultricies purus nec tincidunt. Suspendisse rutrum neque in enim consequat, non
        dignissim nunc maximus. Donec nec purus aliquam eros consequat blandit eu eget arcu. Proin nec commodo est. Cras
        pharetra elit vel tristique sollicitudin. Nullam at velit libero.
        Ut id pellentesque elit, id placerat quam. Pellentesque ac orci vel nunc consectetur luctus sed consequat
        tortor. Curabitur tincidunt blandit viverra. Orci varius natoque penatibus et magnis
        dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. Aliquam porttitor ligula non
        gravida blandit. Nulla dictum eget ante sit amet accumsan. Duis sagittis orci ut
        massa luctus laoreet non sit amet mauris. Suspendisse nunc tortor, posuere ut mauris sit amet, blandit luctus
        libero. Suspendisse quis tellus ut enim cursus finibus. Pellentesque varius quam
        vitae eros tristique condimentum. Nullam lacinia eu orci a sodales. Proin nisl nibh, molestie a volutpat ut,
        ullamcorper eu lorem. Morbi id elementum sem, eget malesuada magna</p>
</div>
<?php
require_once 'snippets/volgaFooter.php';
?>
</body>
</html>