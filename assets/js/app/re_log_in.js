$(function () {
    $("#loginForm").submit(function (e) {
    e.preventDefault();
    $(".btnSubmit").attr('disabled', true);
    var password = $('input[type="password"]').val();
    var localPassword = localStorage.getItem("password");
    if(password === localPassword) {
    sessionStorage.setItem("isLoggedIn", "1");
    localStorage.setItem("welcome", "1");
    location.href = 'home.html';
    } else {
    sys_warning('Incorrect password');
    $(".btnSubmit").attr('disabled', false);
    $('input[type="password"]').focus()
    }
    });
    $(document).ready(function () {
    $(".username").text(localStorage.getItem("username"));
    });
   })