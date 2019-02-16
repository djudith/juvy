const base_url = $("body").data('base_url');
$(document).ready(function () {
    setTimeout(() => {
        $("html, body").animate({ scrollTop: 0 }, 300);
    }, 300);
    $(".modal-dismissable").modal();
    $('.modal-notdismissible').modal({
        "dismissible": false,
    });
    $('.home-tabs').tabs({
        // 'swipeable': true,
        'onShow': function (f) {
            $('.brand-logo').html($(f).data('page'))
        },
    });
    $('.mz-select').formSelect();
    $('.fixed-action-btn').floatingActionButton();
    $('.sidenav').sidenav();
    $('.parallax').parallax();
    $("time.timeago").timeago();
    $('.tap-target').tapTarget();
    $('.textarea-counter').characterCounter();
    $('.dropdown-trigger').dropdown();

    // click btn
    $(".loadingOverlay .refreshBtn").click(function (e) {
        e.preventDefault();
        location.reload(true);
    });
    $(".logoutBtn").click(function (e) {
        e.preventDefault();
        sys_confirm('Logout', 'Are you sure you want to logout?', 'Logout', 'Cancel', function () { logout() })
    });
    $(".sidenav-back").click(function (e) {
        e.preventDefault();
        location.href = $(".current_page").data('back');
    });
    $(".current_page").each(function (index, element) {
        // element == this
        if ($(element).is(":visible")) {
            $('.brand-logo').html($(element).data('page'))
        }
    });



    if (localStorage.getItem("enabled") == 0) {
        $("body").append(
            `<div id="unverifiedAccountDiv">
                <i class="material-icons medium">help</i>
                <h5>Your account is not yet verified. Please visit your email address and follow the instructions for account verification.</h5>
                <p>Account already verified? Click <a href="#" class=" blue-text" onclick="refreshVerified();location.reload();">here</a> to refresh</p>
                <button class="btn btn-small bg-theme-danger waves-effect" onclick="logout()" style="position:absolute;bottom:30px;right:10px">Logout</button>
            </div>`
        );
    }
    if (localStorage.getItem("user_type") == 1) {
        $(".sidenav").find("a[href='my_thoughts.html']").parent().remove();

    }

});



$(document).ajaxStart(function () {
    NProgress.start()
});
$(document).ajaxComplete(function () {
    NProgress.done()
});
const sys_alert = (title, message, cb) => {
    alertify.alert(title, message, cb);
}
const sys_error = (msg = 'There has been a problem. Please try again', cb, duration = 4000) => {
    // alertify.set('notifier', 'position', 'top-center')
    // alertify.error(msg);
    M.toast({
        html: '<span class="white-text d-flex align-items-center truncate"><i class="material-icons">error</i> &nbsp; &nbsp;' + msg + '</span>',
        displayLength: duration,
        classes: 'bg-theme-danger',
        completeCallback: cb
    })
}
const sys_success = (msg, cb, duration = 4000) => {
    // alertify.set('notifier', 'position', 'top-center')
    // alertify.success(msg);
    M.toast({
        html: '<span class="white-text d-flex align-items-center truncate"><i class="material-icons">check</i> &nbsp; &nbsp;' + msg + '</span>',
        displayLength: duration,
        classes: 'bg-theme-success',
        completeCallback: cb
    })
}
const sys_warning = (msg, cb, duration = 4000) => {
    // alertify.set('notifier', 'position', 'top-center')
    // alertify.warning(msg);
    M.toast({
        html: '<span class="white-text d-flex align-items-center truncate"><i class="material-icons">warning</i> &nbsp; &nbsp;' + msg + '</span>',
        displayLength: duration,
        classes: 'bg-theme-warning',
        completeCallback: cb
    })
}
const sys_confirm = (title, msg, oklabel, cancellabel, okcb, cancelcb) => {
    alertify.confirm(title, msg, okcb, cancelcb).set('labels', { ok: oklabel, cancel: cancellabel });;
}
const isLoggedIn = () => {
    if (localStorage.getItem("userIsLoggedIn") === null) { // walang naka login
        sys_alert('Log in', 'Log in is required. Please log in using your account.', function () { location.href = "log_in.html#" + location.href; })
    } else { // merong naka login
        if (sessionStorage.getItem("isLoggedIn") != "1") { // kapag tapos na ung session
            sys_alert('Session Expired', 'To make your data secured, we have logged out your account after you left. Please enter your password again.', function () { location.href = "re_login.html#" + location.href; })
        } else {
            displayUser();
            $(".loadingOverlay").fadeOut('fast');
        }
    }
}
const isLoggedInHome = () => {
    if (localStorage.getItem("userIsLoggedIn") === null) { // walang naka login
        // sys_alert('Log in', 'Log in is required. Please log in using your account.', function () { location.href = "log_in.html#" + location.href; })
    } else { // merong naka login
        if (sessionStorage.getItem("isLoggedIn") != "1") { // kapag tapos na ung session
            sys_alert('Session Expired', 'To make your data secured, we have logged out your account after you left. Please enter your password again.', function () { location.href = "re_login.html#" + location.href; })
        } else {
            displayUser();
            $(".loadingOverlay").fadeOut('fast');
        }
    }
}
const displayUser = () => {
    $(".sidenav .name").html(localStorage.getItem("username"));
    $(".sidenav .email").html(localStorage.getItem("email"));
}
const logout = () => {
    localStorage.removeItem("userIsLoggedIn");
    localStorage.removeItem("user_id");
    localStorage.removeItem("username");
    localStorage.removeItem("email");
    localStorage.removeItem("gender");
    localStorage.removeItem("enabled");
    sessionStorage.removeItem("isLoggedIn");
    location.href = "index.html";
}
function refreshVerified() {
    $.ajax({
        url: base_url + "main/getUserInfo/" + localStorage.getItem("user_id"),
        beforeSend: function () {
            $(".btnSubmit").attr('disabled', true);
        },
        complete: function () {
            // $(".btnSubmit").attr('disabled', false);
        },
        success: function (data) {
            localStorage.setItem("userIsLoggedIn", "1");
            localStorage.setItem("user_id", data.user_id);
            localStorage.setItem("username", data.username);
            localStorage.setItem("email", data.email);
            localStorage.setItem("enabled", data.enabled);
            localStorage.setItem("gender", data.gender);
            localStorage.setItem("juvy_avatar", data.juvy_avatar);
            sessionStorage.setItem("isLoggedIn", "1");
        }
    });
}