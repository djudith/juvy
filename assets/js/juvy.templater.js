const head = `
<html>
    <head>
        <link rel="stylesheet" href="./assets/css/material-icons.css">
        <link type="text/css" rel="stylesheet" href="./assets/css/materialize.css" />
        <link type="text/css" rel="stylesheet" href="./assets/css/main.css" />
        <link type="text/css" rel="stylesheet" href="./assets/css/bs4.helper.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="icon" href="./assets/img/icon.png">
        <title>JUVY v1.0</title>
    </head>
    <body>`;




const foot = `
    <script type="text/javascript" src="./assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="./assets/js/materialize.min.js"></script>
    <script type="text/javascript" src="./assets/js/custom.js"></script>
  </body>
</html>`;

const topnav = `
<nav class="nav-extended light-blue darken-1">
    <div class="nav-wrapper">
        <a href="#" data-target="slide-out" class="sidenav-trigger show-on-large"><i class="material-icons">menu</i></a>
        <a href="./home.html" class="brand-logo">
            <!-- <img src="./assets/img/juvy-white.png" class="" width="25" alt=""> -->
            <!-- JUVY -->
        </a>
    </div>
</nav>`;

const sidenav = `
<ul id="slide-out" class="sidenav">
    <li>
    <div class="user-view">
        <div class="background">
        <img src="./assets/img/gradient-bg.png" class=" responsive-img" >
        </div>
        <a href="#user"><i class="material-icons medium white-text">account_circle</i></a>
        <a href="#name"><span class="name white-text">Judith B. Delgado</span></a>
        <a href="#email"><span class=" email white-text">djudith@gmail.com</span></a>
    </div>
    </li>
    <li><a class="waves-effect" href="index.html"><i class="material-icons">settings</i>Settings</a></li>
    <li><a class="waves-effect" href="index.html"><i class="material-icons">exit_to_app</i>Logout</a></li>
</ul>`;

const bottom_nav = `
<ul class="bottom_tabs  tabs grey  lighten-3 ">
    <li class="tab "><a href="#test1" class="active"><i class="material-icons">message</i></a></li>
    <li class="tab "><a href="#test2"><i class="material-icons">location_on</i></a></li>
    <li class="tab "><a href="#test3"><i class="material-icons">history</i></a></li>
    <li class="tab "><a href="#test4"><i class="material-icons">settings</i></a></li>
</ul>`;