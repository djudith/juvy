$(function () {
    const feed_id = location.hash;
    $(document).ready(function () {
        isLoggedIn();
        getDetails(feed_id.replace("#", ""));
    });



    $("#editForm").submit(function (e) {
        e.preventDefault();
        const serial = {
            "feed_content": $("textarea").val().replace(/\n/g, "<br>"),
            "feed_id": feed_id.replace("#", ""),
            "feed_op": $(".feed_op").val(),
        };
        $.ajax({
            type: "post",
            url: base_url + "main/editFeed",
            data: serial,
            beforeSend: function () {
                $(".btnSubmit").attr('disabled', true);
            },
            complete: function () {
                $(".btnSubmit").attr('disabled', false);
            },
            success: function (data) {
                if (data.success == 1) {
                    sys_success('Yey! Post has been updated.', function () {
                        location.href = "my_thoughts.html";
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






    const getDetails = (feed_id) => {
        $.ajax({
            type: "POST",
            url: base_url + "main/getFeedInfo/" + feed_id,
            success: function (data) {
                $("textarea").val(data.feed_content.replace(/<br>/g, "\r"));
                $(".feed_op").val(data.feed_op);
                if (data.feed_op == "Anonymous") {
                    $(".chkbox_anonymous").prop("checked", true)
                }
                M.updateTextFields();
                M.textareaAutoResize($('textarea'));
            }
        });
    }




})