<header>
    <link type="text/css" rel="stylesheet" href="/styles/headerstyle.css">
    <link type="text/css" rel="stylesheet" href="/styles/dropdown.css">
    <div class="header-no-flex">
        <h2 style="text-align: right; margin: 0">
            <?php
            if (isset($_SESSION['userId']) && $_SESSION['authenticated'])
            {
                ?>
                <span style="color:coral"><em>Volga Welcomes You,</em> <?php echo $_SESSION['name']; ?></span>&nbsp;&nbsp;&nbsp;
                <a href="/signIn.php?signout=true">Sign out</a>&nbsp;<a href="/dashboard">Dashboard</a>
                <?php
            } else
            {
                ?>
                <a href="/register.php">Register</a> <a href="/signIn.php">Sign
                in</a>
                <?php
            } ?>
            <a href="/cart">Cart</a>
        </h2>
    </div>
    <div class="header">
        <div class="header-left">
            <a href="/index.php"><img id="logo" src="/images/volgalogo.png" alt="Volga Logo" style="width: 75%"/></a>
        </div>
        <div class="header-right">
            <h1 id="linklist">  <?php # This basically determines which page is active then gives it the active ID, underlining its link ?>
                <a id="<?php echo $_SERVER['SCRIPT_NAME'] == '/index.php' ? 'active' : '' ?>" href="/index.php">HOME</a>
                <div class="dropdown">
                    <a id="<?php echo $_SERVER['SCRIPT_NAME'] == '/shop.php' ? 'active' : '' ?>" class="dropdown-anchor"
                       href="/shop.php">SHOP VOLGA</a>
                    <div class="dropdown-content">
                        <a href="/search.php">Search Volga</a>
                    </div>
                </div>
                <a id="<?php echo $_SERVER['SCRIPT_NAME'] == '/about.php' ? 'active' : '' ?>"
                   href="/about.php">ABOUT</a>
                <a id="<?php echo $_SERVER['SCRIPT_NAME'] == '/contact.php' ? 'active' : '' ?>" href="/contact.php">CONTACT</a>
            </h1>
        </div>
    </div>
</header>