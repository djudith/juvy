$(function () {

    
    if (localStorage.getItem("user_type") == 1) {
        location.href = "admin.html"
    } else {
        isLoggedInHome();
    }

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
                $(".btnSubmit").attr('disabled', false);
            },
            success: function (data) {
                if (data.success == 1) {

                    localStorage.setItem("userIsLoggedIn", "1");
                    sessionStorage.setItem("isLoggedIn", "1");
                    localStorage.setItem("username", data.info.username);
                    localStorage.setItem("user_type", data.user_type);
                    localStorage.setItem("user_id", data.user_id);
                    localStorage.setItem("enabled", data.info.enabled);
                    localStorage.setItem("email", data.info.email);
                    localStorage.setItem("password", $("input[name='password']").val());

                    if (data.user_type == 2) {
                        localStorage.setItem("juvy_avatar", data.info.juvy_avatar);
                        localStorage.setItem("gender", data.info.gender);
                        localStorage.setItem("welcome", "1");
                        location.href = "home.html";
                    } else {
                        location.href = "admin.html";
                    }
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
                    sys_success('Please check your email now.')
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