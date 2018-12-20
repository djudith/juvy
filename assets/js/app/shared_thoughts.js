$(function () {
    $(document).ready(function () {
        isLoggedIn();
        getFeedByUsr();
        setTimeout(() => {
            $(".note_auto_dismiss").fadeOut();
        }, 10000);
        if (sessionStorage.getItem("mythoughts_note") === null) {
            $(".note_auto_dismiss").show();
            sessionStorage.setItem("mythoughts_note", 1)
        }
    });


    $(".feed_container").delegate(".deleteFeedBtn", 'click', function () {
        var value = $(this).data('value');
        sys_confirm('Delete', 'Are your sure you want to delete this post?', 'Yes', 'No', function () {
            delete_feed(value);
        })
    })

    $(".feed_container").delegate(".onlyeveryoneBtn", 'click', function () {
        var value = $(this).data('value');
        var enabled = $(this).data('enabled');
        sys_confirm('Post Privacy', 'Are your sure you want to update privacy settings of this post?', 'Yes', 'No', function () {
            toggle_feed_privacy(value, enabled);
        })
    })

    $(".feed_container").delegate(".editBtn", 'click', function () {
        var value = $(this).data('value');
        location.href = "edit_feed.html#" + value;
    })






    function getFeedByUsr() {
        $.ajax({
            type: "get",
            url: base_url + "main/getFeedByUsr/" + localStorage.getItem("user_id"),
            success: function (data) {
                if (data.length <= 0) {
                    $(".feed_container").html('<center>No posts available</center>');
                } else {
                    $(".feed_container").html('');
                }
                for (var i = 0; i < data.length; i++) {
                    var enabled = ` <i class="material-icons tiny">langauge</i> &nbsp; Everyone`;
                    var onlyeveryone = `<li><a class="onlyeveryoneBtn" data-enabled="${data[i].enabled}" data-value="${data[i].feed_id}" >Only Me</a></li>`;
                    if (data[i].enabled == 0) {
                        enabled = ` <i class="material-icons tiny">lock</i> &nbsp; Only Me`;
                        onlyeveryone = `<li><a class="onlyeveryoneBtn" data-enabled="${data[i].enabled}" data-value="${data[i].feed_id}" >Everyone</a></li>`;
                    }
                    var html = `<!-- <a href="#viewPostModal" class="modal-trigger"> -->
                                    <div class="card">
                                        <div class="card-content">
                                            <a class='dropdown-trigger btn btn-flat right'  href='#' data-target='dropdown${i}'><i class=" material-icons">settings</i></a>
                                            <ul id='dropdown${i}' class='dropdown-content'>
                                            <li><a class="editBtn" data-value="${data[i].feed_id}" >Edit</a></li>
                                            ${onlyeveryone}
                                            <li><a class="deleteFeedBtn" data-value="${data[i].feed_id}" >Delete</a></li>
                                            </ul>
                                            <p class="">${data[i].feed_content}</p>
                                            <div class="row mb-0 mt-2">
                                                <div class="grey-text col s6 p-0"> ${enabled} <br>
                                                    <time class="timeago" datetime="${data[i].feed_date.replace(" ", "T")}+0800">${data[i].feed_date}</time>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                               <!-- </a> -->`
                    $(".feed_container").append(html);
                }
                $('.dropdown-trigger').dropdown();
                $("time.timeago").timeago();
            }
        });
    }
    function delete_feed(feed_id) {
        $.ajax({
            type: "POST",
            url: base_url + "main/deleteFeed",
            data: { feed_id },
            success: function (data) {
                if (data.success == 1) {
                    getFeedByUsr();
                    sys_success('Post has been deleted')
                } else {
                    sys_error();
                }
            }
        });
    }
    function toggle_feed_privacy(feed_id, enabled) {
        $.ajax({
            type: "POST",
            url: base_url + "main/toggle_feed_privacy",
            data: { feed_id, enabled },
            success: function (data) {
                if (data.success == 1) {
                    getFeedByUsr();
                    sys_success('Post privacy has been updated')
                } else {
                    sys_error();
                }
            }
        });
    }
})