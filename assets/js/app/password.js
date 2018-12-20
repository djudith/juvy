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
            url: base_url + "main/updatePassword/" + localStorage.getItem("user_id"),
            data: serial,
            beforeSend: function () {
                $(".btnSubmit").attr('disabled', true);
            },
            complete: function () {
                $(".btnSubmit").attr('disabled', false);
            },
            success: function (data) {
                if (data.success == 1) {
                    sys_success('Yey! Your password has been updated.');
                    setTimeout(() => {
                        location.href = "account.html"
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