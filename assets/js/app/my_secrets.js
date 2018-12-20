$(function () {
    $(document).ready(function () {
        isLoggedIn();
        window.history.pushState(null, "", window.location.href);
        window.onpopstate = function () {
            window.history.pushState(null, "", window.location.href);
        };
        if (sessionStorage.getItem("access_to_secrets") != 1) {
            location.href = "home.html#secrets"
        }
        getSecretByUsr();
        setTimeout(() => {
            $(".note_auto_dismiss").fadeOut();
        }, 10000);
        if (sessionStorage.getItem("mythoughts_note") === null) {
            $(".note_auto_dismiss").show();
            sessionStorage.setItem("mythoughts_note", 1)
        }

    });

    $(window).bind('beforeunload', function () {
        // sessionStorage.removeItem("access_to_secrets");
        // sessionStorage.removeItem("tmp_secret_pass");
    });


    $(".secrets_container").delegate(".deletesecretsBtn", 'click', function () {
        var value = $(this).data('value');
        sys_confirm('Delete', 'Are your sure you want to delete this post?', 'Yes', 'No', function () {
            delete_secrets(value);
        })
    })

    $(".secrets_container").delegate(".onlyeveryoneBtn", 'click', function () {
        var value = $(this).data('value');
        var enabled = $(this).data('enabled');
        sys_confirm('Post Privacy', 'Are your sure you want to update privacy settings of this post?', 'Yes', 'No', function () {
            toggle_secrets_privacy(value, enabled);
        })
    })

    $(".secrets_container").delegate(".editBtn", 'click', function () {
        var secret_id = $(this).data('value');
        alertify.prompt('Toggle View', 'Re-enter your secret password', ''
            , function (evt, value) {
                if (value == sessionStorage.getItem("tmp_secret_pass")) {
                    location.href = "edit_secrets.html#" + secret_id;
                } else {
                    sys_warning('Incorrect secret pass')
                }
            }
            , function () { }).set('type', 'password')
    })

    $(".secrets_container").delegate(".toggleBtn", 'click', function () {
        var secret_id = $(this).data('value');
        if ($("#secret_" + secret_id).find(".secret_enc").is(":visible")) {
            alertify.prompt('Toggle View', 'Re-enter your secret password', ''
                , function (evt, value) {
                    if (value == sessionStorage.getItem("tmp_secret_pass")) {
                        $("#secret_" + secret_id).find(".secret_enc").hide();
                        $("#secret_" + secret_id).find(".secret_dec").show();
                    } else {
                        sys_warning('Incorrect secret pass')
                    }
                }
                , function () { }).set('type', 'password')
        } else {
            $("#secret_" + secret_id).find(".secret_enc").show();
            $("#secret_" + secret_id).find(".secret_dec").hide();
        }

    })

    $(".sidenav-back").click(function (e) {
        e.preventDefault();
        sessionStorage.removeItem("access_to_secrets");
        sessionStorage.removeItem("tmp_secret_pass");
    });





    function getSecretByUsr() {
        $.ajax({
            type: "get",
            url: base_url + "main/getSecretByUsr/" + localStorage.getItem("user_id"),
            success: function (data) {
                if (data.length <= 0) {
                    $(".secrets_container").html('<center>No secrets saved. <a class=" blue-text" href="compose_secrets.html">Add now</a></center>');
                } else {
                    $(".secrets_container").html('');
                }
                for (var i = 0; i < data.length; i++) {
                    var html = ` <div class="card" id="secret_${data[i].secret_id}">
                                        <div class="card-content">
                                            <a class='dropdown-trigger btn btn-flat right'  href='#' data-target='dropdown${i}'><i class=" material-icons">settings</i></a>
                                            <ul id='dropdown${i}' class='dropdown-content'>
                                                <li><a class="toggleBtn" data-value="${data[i].secret_id}" >Toggle</a></li>
                                                <li><a class="editBtn" data-value="${data[i].secret_id}" >Edit</a></li>
                                                <li><a class="deletesecretsBtn" data-value="${data[i].secret_id}" >Delete</a></li>
                                            </ul>
                                            <p class="truncate secret_enc">${data[i].secret_enc}</p>
                                            <p class="secret_dec" style="display:none">${data[i].secret_dec}</p>
                                            <div class="row mb-0 mt-2">
                                                <div class="grey-text col s12 p-0"> 
                                                    Saved <time class="timeago" datetime="${data[i].date_created.replace(" ", "T")}+0800">${data[i].date_created}</time>
                                                </div>
                                            </div>
                                        </div>
                                    </div> `
                    $(".secrets_container").append(html);
                }
                $('.dropdown-trigger').dropdown();
                $("time.timeago").timeago();
            }
        });
    }
    function delete_secrets(secret_id) {
        $.ajax({
            type: "POST",
            url: base_url + "main/deletesecrets",
            data: { secret_id },
            success: function (data) {
                if (data.success == 1) {
                    getSecretByUsr();
                    sys_success('Post has been deleted')
                } else {
                    sys_error();
                }
            }
        });
    }
    function toggle_secrets_privacy(secret_id, enabled) {
        $.ajax({
            type: "POST",
            url: base_url + "main/toggle_secrets_privacy",
            data: { secret_id, enabled },
            success: function (data) {
                if (data.success == 1) {
                    getsecretsByUsr();
                    sys_success('Post privacy has been updated')
                } else {
                    sys_error();
                }
            }
        });
    }
})