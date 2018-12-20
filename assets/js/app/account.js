$(function () {
    isLoggedIn();
    const getInfo = () => {
        $.ajax({
            type: "get",
            url: base_url + "main/getUserInfo/" + localStorage.getItem("user_id"),
            success: function (data) {
                $("#email").val(data.email);
                $("#username").val(data.username);
                $("#firstname").val(data.first_name);
                $("#lastname").val(data.last_name);
                $("#gender").val(data.gender);
                $("#age").val(data.age == "0" ? "" : data.age);
                $('.mz-select').formSelect();
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
            url: base_url + "main/updateAccount/" + localStorage.getItem("user_id"),
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