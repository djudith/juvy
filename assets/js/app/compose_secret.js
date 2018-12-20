$(function () {
    isLoggedIn();

    $(document).ready(function () {
        if (sessionStorage.getItem("access_to_secrets") != 1) {
            location.href = "home.html#secrets"
        }
    });

    $("#secretForm").submit(function (e) {
        e.preventDefault();
        const serial = {
            "secret": $("textarea").val().replace(/\n/g, "<br>"),
            "user_id": localStorage.getItem("user_id"),
        };
        $.ajax({
            type: "post",
            url: base_url + "main/composesecret",
            data: serial,
            beforeSend: function () {
                $(".btnSubmit").attr('disabled', true);
            },
            complete: function () {
                $(".btnSubmit").attr('disabled', false);
            },
            success: function (data) {
                if (data.success == 1) {
                    sys_success('Your secret has been saved. ', function () {
                        location.href = "my_secrets.html";
                    }, 5000);
                } else {
                    sys_error();
                }
            }
        });
    });

    $(".chkbox_anonymous").change(function (e) {
        e.preventDefault();
        if ($(this).is(":checked")) {
            $(".secret_op").val('Anonymous');
        } else {
            $(".secret_op").val(localStorage.getItem("username"));
        }
    });
    /*     $("textarea").on("keypress", function (e) {
            var key = e.keyCode;
    
            // If the user has pressed enter
            if (key == 13) {
                let myval = $("textarea").val();
                myval += " >\r";
                $("textarea").val(myval)
                return false;
            }
            else {
                return true;
            }
        }); */

})