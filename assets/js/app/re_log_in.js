$(function () {
    $("#loginForm").submit(function (e) {
        e.preventDefault();
        var serial = $(this).serialize();
        serial += "&username=" + localStorage.getItem("username");
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
                    localStorage.setItem("gender", data.info.gender);
                    localStorage.setItem("juvy_avatar", data.info.juvy_avatar);
                    localStorage.setItem("enabled", data.info.enabled);

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

    $(document).ready(function () {
        $(".username").text(localStorage.getItem("username"));
    });
})