$(function () {
    $("#signupForm").submit(function (e) {
        e.preventDefault();
        const serial = $(this).serialize();
        $.ajax({
            type: "post",
            url: base_url + "main/sign_up",
            data: serial,
            beforeSend: function () {
                $(".btnSubmit").attr('disabled', true);
            },
            complete: function () {
                // $(".btnSubmit").attr('disabled', false);
            },
            success: function (data) {
                if (data.success == 1) {
                    sys_success('Yey! You have successfully registered. Please wait..');
                    localStorage.setItem("userIsLoggedIn", "1");
                    localStorage.setItem("user_id", data.user_id);
                    localStorage.setItem("username", data.info.username);
                    localStorage.setItem("email", data.info.email);
                    localStorage.setItem("enabled", 0);
                    sessionStorage.setItem("isLoggedIn", "1");
                    localStorage.setItem('new_member', '1');
                    setTimeout(() => {
                        location.href = "home.html";
                    }, 3000);
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
})