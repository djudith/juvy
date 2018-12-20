$(function () {
    if (localStorage.getItem("user_type") == 1) {
        location.href = "admin.html"
    } else {
        isLoggedIn();
    }
    // localStorage.setItem('welcome', 1)
    if (localStorage.getItem('welcome') == 1) {
        setTimeout(() => {
            // $('#new_memberModal').modal('open');
        }, 1000);
        localStorage.removeItem('welcome')
    }
    // localStorage.setItem('new_member', 1)
    if (localStorage.getItem('new_member') == 1) {
        setTimeout(() => {
            $('.tap-target').tapTarget('open');
        }, 500);
        localStorage.removeItem('new_member')
    }

    refreshVerified();
    setTimeout(() => {
        $(".juvy_avatar").attr('src', './assets/img/avatar/' + localStorage.getItem("juvy_avatar"));
    }, 600);
    /* setTimeout(() => {
        $(".avatar_tips").fadeOut('slow');
    }, 7000); */
    $(".juvy_avatar").click(function (e) {
        e.preventDefault();
        $("#juvyAvatarModal").modal('open')
    });

    for (var i = 1; i <= 16; i++) {
        var content = `<img data-file="${i}.png" src="./assets/img/avatar/${i}.png" class="p-2 select_juvy_avatar" width="60" height="60">`
        $("#juvyAvatarModal .image_cons").append(content);
    }

    $("#juvyAvatarModal").delegate('.select_juvy_avatar', 'click', function (e) {
        e.preventDefault();
        var juvy_avatar = $(this).data('file');
        var user_id = localStorage.getItem("user_id");
        $.ajax({
            type: "POST",
            url: base_url + "main/change_avatar",
            data: { juvy_avatar, user_id },
            success: function (data) {
                if (data.success == 1) {
                    sys_success('Avatar successfully changed')
                    refreshVerified();
                    setTimeout(() => {
                        $(".juvy_avatar").attr('src', './assets/img/avatar/' + localStorage.getItem("juvy_avatar"));
                    }, 600);
                    $("#juvyAvatarModal").modal('close')
                } else {
                    sys_error();
                }
            }
        });
    });


})