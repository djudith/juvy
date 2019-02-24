const head = `
<html>
    <head>
        <link rel="stylesheet" href="./assets/css/material-icons.css">
        <link type="text/css" rel="stylesheet" href="./assets/css/materialize.css" />
        <link type="text/css" rel="stylesheet" href="./assets/css/main.css" />
        <link type="text/css" rel="stylesheet" href="./assets/css/nprogress.css" />
        <link type="text/css" rel="stylesheet" href="./assets/css/alertify.css" />
        <link type="text/css" rel="stylesheet" href="./assets/css/alertify.default.css" />
        <link type="text/css" rel="stylesheet" href="./assets/css/bs4.helper.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="icon" href="./assets/img/icon.png">
        <title>Juvy | AI Companion</title>
    </head>
    <body data-base_url="https://juvy101.000webhostapp.com/backend/">`;




const foot = `
    <script type="text/javascript" src="./assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="./assets/js/materialize.min.js"></script>
    <script type="text/javascript" src="./assets/js/jquery.timeago.js"></script>
    <script type="text/javascript" src="./assets/js/nprogress.js"></script>
    <script type="text/javascript" src="./assets/js/alertify.js"></script>
    <script type="text/javascript" src="./assets/js/custom.js"></script>
  </body>
</html>`;

const topnav = `
<div class="navbar-fixed">
    <nav class="nav-extended bg-gradient">
        <div class="nav-wrapper">
            <a href="#" data-target="slide-out" class="sidenav-trigger show-on-large"><i class="material-icons">menu</i></a>
            <a href="#" class="brand-logo" style="font-size: 1.5em;">
                <!-- <img src="./assets/img/juvy-white.png" class="" width="25" alt=""> -->
                <!-- Chat -->
            </a>
        </div>
    </nav>
</div>`;

const backnav = `
<div class="navbar-fixed">
    <nav class="nav-extended bg-gradient">
        <div class="nav-wrapper">
            <a href="#" class="sidenav-back show-on-large"><i class="material-icons">arrow_back</i></a>
            <a class="brand-logo" style="font-size: 1.5em;">
            </a>
        </div>
    </nav>
</div>`;

const convo_topnav = `
<div class="navbar-fixed">
    <nav class="nav-extended bg-gradient">
        <div class="nav-wrapper">
            <a href="home.html" class="sidenav-trigger show-on-large"><i class="material-icons">arrow_back</i></a>
            <div class="chat-avatar d-flex align-items-center ">
                <img src="./assets/img/avatar/juvy.png" class=" rounded-circle " width="30" alt="">
            </div>
            <a  class="brand-logo" style="font-size: 1.5em;">
                <!--Juvy-->
            </a>
        </div>
    </nav>
</div>`;


const sidenav = `
<ul id="slide-out" class="sidenav">
    <li>
    <div class="user-view">
        <div class="background">
        <img src="./assets/img/gradient-bg.png" class=" responsive-img" >
        </div>
       <!-- <a href="#user"><i class="material-icons medium white-text">account_circle</i></a> -->
        <a href="account.html"><span class="name white-text">Judith B. Delgado</span></a>
        <a href="account.html"><span class=" email white-text">djudith@gmail.com</span></a>
    </div>
    </li>
    <li><a class="waves-effect waves-theme-gradient" href="home.html"><i class="material-icons">home</i>Home</a></li>
    <li><a class="waves-effect waves-theme-gradient" href="account.html"><i class="material-icons">account_circle</i>My Account</a></li>
    <li><a class="waves-effect waves-theme-gradient" href="my_thoughts.html"><i class="material-icons">edit</i>Shared Thoughts</a></li>
    <!-- <li><a class="waves-effect waves-theme-gradient" href="index.html"><i class="material-icons">sentiment_very_satisfied</i>Juvy</a></li>
    <li><a class="waves-effect waves-theme-gradient" href="index.html"><i class="material-icons">settings</i>Settings</a></li> -->
    <li><a class="waves-effect waves-theme-gradient logoutBtn" ><i class="material-icons">exit_to_app</i>Logout</a></li>
    <li>
        <a href="javascript:void(0)">Dark Mode
            <div class="switch right">
                <label>
                Off
                <input type="checkbox" id="darkModeChk">
                <span class="lever"></span>
                On
                </label>
            </div>
        </a>
    </li>
</ul>`;

const bottom_nav = `
<ul class="bottom_tabs  tabs home-tabs grey  lighten-3 ">
    <li class="tab "><a href="#convo" class="active"><i class="material-icons">message</i></a></li>
    <li class="tab "><a href="#feed"><i class="material-icons">rss_feed</i></a></li>
    <li class="tab "><a href="#secrets" class="secretTab"><i class="material-icons">lock</i></a></li>
    <li class="tab "><a href="#hopeline"><i class="material-icons">favorite_border</i></a></li>
</ul>`;