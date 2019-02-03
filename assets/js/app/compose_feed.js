$(function () {
    isLoggedIn();
    $(document).ready(function () {
        $(".feed_op").val(localStorage.getItem("username"));
        setTimeout(() => {
            $(".note_auto_dismiss").fadeOut();
        }, 30000);
        if (sessionStorage.getItem("compose_feed_note") === null) {
            $(".note_auto_dismiss").show();
            sessionStorage.setItem("compose_feed_note", 1)
        }
    });
    $("#feedForm").submit(function (e) {
        e.preventDefault();
        const serial = {
            "feed_content": $("textarea").val().replace(/\n/g, "<br>"),
            "user_id": localStorage.getItem("user_id"),
            "feed_op": $(".feed_op").val()
        };
        $.ajax({
            type: "post",
            url: base_url + "main/composeFeed",
            data: serial,
            beforeSend: function () {
                $(".btnSubmit").attr('disabled', true);
            },
            complete: function () {
                $(".btnSubmit").attr('disabled', false);
            },
            success: function (data) {
                if (data.success == 1) {
                    sys_success('Yey! Your thoughts has been shared.', function () {
                        location.href = "home.html#feed";
                    });
                } else {
                    sys_error();
                }
            }
        });
    });

    $(".chkbox_anonymous").change(function (e) {
        e.preventDefault();
        if ($(this).is(":checked")) {
            $(".feed_op").val('Anonymous');
        } else {
            $(".feed_op").val(localStorage.getItem("username"));
        }
    });


    // Filter Bad Words
    function BlockBadWords(content) {
        var badWords = /tang ina|tangina|hayup|hayop|ogag|suicide|mamatay|pakamatay|magpakamatay|fuck|shit|puta|pota|fck|fvck|vovo|tnga|gago|king ina|kupal|putang ina|putangina|pota|bobo|tanga/;
        return content.replace(badWords, "*********");
    }


    $("textarea").on("keydown", function (e) {
        var newc = BlockBadWords($(this).val());
        $(this).val(newc)
    });

})