$(function () {
    isLoggedIn();
    const getInfo = () => {
        $.ajax({
            type: "get",
            url: base_url + "main/getAdminInfo/" + localStorage.getItem("user_id"),
            success: function (data) {
                $("#username").val(data.username);
                $("#email").val(data.email);
                M.updateTextFields();
            }
        });
    }
    $(document).ready(function () {
        getInfo();
    });
    $("#accountForm").submit(function (e) {
        e.preventDefault();
        const serial = $(this).serialize();
        $.ajax({
            type: "post",
            url: base_url + "main/updateAdminAccount/" + localStorage.getItem("user_id"),
            data: serial,
            beforeSend: function () {
                $(".btnSubmit").attr('disabled', true);
            },
            complete: function () {
                $(".btnSubmit").attr('disabled', false);
            },
            success: function (data) {
                if (data.success == 1) {
                    getInfo();
                    sys_success('Yey! Your account has been updated.');
                } else if (data.success == 0) {
                    sys_warning(data.message);
                } else {
                    sys_error();
                }
            }
        });
    });
})