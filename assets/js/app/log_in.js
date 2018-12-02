$(function () {
    $("#loginForm").submit(function (e) {
        e.preventDefault();
        const serial = $(this).serialize();
        $.ajax({
            type: "post",
            url: base_url + "main/login",
            data: serial,
            beforeSend: function () {
                $(".btnSubmit").attr('disabled', true);
            },
            complete: function () {
                // $(".btnSubmit").attr('disabled', false);
            },
            success: function (data) {
                if (data.success == 1) {
                    localStorage.setItem("userIsLoggedIn", "1");
                    localStorage.setItem("user_id", data.user_id);
                    localStorage.setItem("username", data.info.username);
                    localStorage.setItem("email", data.info.email);
                    sessionStorage.setItem("isLoggedIn", "1");
                    localStorage.setItem("welcome", "1");
                    location.href = "home.html";
                } else if (data.success == 0) {
                    sys_warning(data.message);
                    $(".btnSubmit").attr('disabled', false);
                } else {
                    sys_error();
                    $(".btnSubmit").attr('disabled', false);
                }
            }
        });
    });

    $("#forgotForm").submit(function (e) {
        e.preventDefault();
        const serial = $(this).serialize();
        $.ajax({
            type: "post",
            url: base_url + "main/forgotPassword",
            data: serial,
            beforeSend: function () {
                $(".btnForgotPass").attr('disabled', true);
            },
            complete: function () {
                $(".btnForgotPass").attr('disabled', false);
            },
            success: function (data) {
                if (data.success == 1) {
                    sys_success('Your new password has been sent to your account\'s email. Please check your email now.')
                    $("#forgotModal").modal('close')
                } else if (data.success == 0) {
                    sys_warning(data.message);
                } else {
                    sys_error();
                }
            }
        });
    });
})