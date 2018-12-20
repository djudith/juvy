$(function () {
    $(document).ready(function () {
        $.ajax({
            type: "POST",
            url: base_url + "main/getSecretPass",
            data: { "username": localStorage.getItem("username") },
            success: function (data) {
                if (data == "") {
                    $("#unregisteredSecretPass").show();
                } else {
                    $("#registeredSecretPass").show();
                }
            }
        });
    });

    $("#registerSecretForm").submit(function (e) {
        e.preventDefault();
        var serial = $(this).serialize();
        serial += "&user_id=" + localStorage.getItem("user_id");
        $.ajax({
            type: "post",
            url: base_url + "main/registerSecretPass",
            data: serial,
            beforeSend: function () {
                // $(".btnSubmit").attr('disabled', true);
            },
            complete: function () {
                // $(".btnSubmit").attr('disabled', false);
            },
            success: function (data) {
                if (data.success == 1) {
                    sys_success('Secret pass has been registered', function () { location.reload() })
                } else {
                    sys_warning(data.message);
                }
            }
        });
    });


    $("#secretPassForm").submit(function (e) {
        e.preventDefault();
        var serial = $(this).serialize();
        serial += "&user_id=" + localStorage.getItem("user_id");
        $.ajax({
            type: "post",
            url: base_url + "main/secretsLogin",
            data: serial,
            beforeSend: function () {
                // $(".btnSubmit").attr('disabled', true);
            },
            complete: function () {
                // $(".btnSubmit").attr('disabled', false);
            },
            success: function (data) {
                if (data.success == 1) {
                    sessionStorage.setItem("access_to_secrets", 1);
                    sessionStorage.setItem("tmp_secret_pass", $("#secret_pass1").val());
                    location.href = "my_secrets.html"
                } else {
                    sys_warning(data.message);
                }
            }
        });
    });
})