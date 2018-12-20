$(function () {
    const secret_id = location.hash.replace("#", "");
    $(document).ready(function () {
        isLoggedIn();
        getDetails(secret_id);
        window.history.pushState(null, "", window.location.href);
        window.onpopstate = function () {
            window.history.pushState(null, "", window.location.href);
        };
        if (sessionStorage.getItem("access_to_secrets") != 1) {
            location.href = "home.html#secrets"
        }
    });



    $("#secretForm").submit(function (e) {
        e.preventDefault();
        const serial = {
            "secret": $("textarea").val().replace(/\n/g, "<br>"),
            "secret_id": secret_id,
        };
        $.ajax({
            type: "post",
            url: base_url + "main/editsecret",
            data: serial,
            beforeSend: function () {
                $(".btnSubmit").attr('disabled', true);
            },
            complete: function () {
                $(".btnSubmit").attr('disabled', false);
            },
            success: function (data) {
                if (data.success == 1) {
                    sys_success('Secret has been updated.', function () {
                        location.href = "my_secrets.html";
                    });
                } else {
                    sys_error();
                }
            }
        });
    });




    const getDetails = (secret_id) => {
        $.ajax({
            type: "POST",
            url: base_url + "main/getSecretInfo/" + secret_id,
            success: function (data) {
                $("textarea").val(data.secret.replace(/<br>/g, "\r"));
                M.updateTextFields();
                M.textareaAutoResize($('textarea'));
            }
        });
    }




})