$(function () {
    if (localStorage.getItem("user_type") == 1) {
        location.href = "admin_password.html"
    } else {
        isLoggedIn();
    }
    $("#accountForm").submit(function (e) {
        e.preventDefault();
        const serial = $(this).serialize();
        $.ajax({
            type: "post",
            url: base_url + "main/updateSecretCode/" + localStorage.getItem("user_id"),
            data: serial,
            beforeSend: function () {
                $(".btnSubmit").attr('disabled', true);
            },
            complete: function () {
                $(".btnSubmit").attr('disabled', false);
            },
            success: function (data) {
                if (data.success == 1) {
                    sys_success('Yey! Your secret code has been updated.');
                    setTimeout(() => {
                        location.href = "my_secrets.html"
                    }, 3000);
                } else if (data.success == 0) {
                    sys_warning(data.message);
                } else {
                    sys_error();
                }
            }
        });
    });
})