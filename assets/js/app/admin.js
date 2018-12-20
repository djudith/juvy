$(function () {
    isLoggedIn();
    getFeed()


    function getFeed() {
        $.ajax({
            type: "get",
            url: base_url + "main/getAdminFeed",
            success: function (data) {
                if (data.length <= 0) {
                    $("#new_shared_thoughts").html('<center>No posts available</center>');
                } else {
                    $("#new_shared_thoughts").html('');
                }
                for (var i = 0; i < data.length; i++) {
                    var enabled = ` <i class="material-icons tiny">language</i> &nbsp; Public`;
                    var onlyeveryone = `<li><a class="admin_toggle_feed_privacy" data-enabled="${data[i].enabled}" data-value="${data[i].feed_id}" >Hide</a></li>`;
                    if (data[i].enabled == -2) {
                        enabled = ` <i class="material-icons tiny">visibility_off</i> &nbsp; Hid by admin`;
                        onlyeveryone = `<li><a class="admin_toggle_feed_privacy" data-enabled="${data[i].enabled}" data-value="${data[i].feed_id}" >Show</a></li>`;
                    }
                    var html = ` <div class="card">
                                        <div class="card-content">
                                            <a class='dropdown-trigger btn btn-flat right'  data-target='dropdown${i}'><i class=" material-icons">settings</i></a>
                                            <ul id='dropdown${i}' class='dropdown-content'>
                                                ${onlyeveryone}
                                                <li><a class="deleteFeedBtn" data-value="${data[i].feed_id}" >Delete</a></li>
                                            </ul>
                                            <p class=" truncate btnViewPost"  data-feed_id="${data[i].feed_id}">${data[i].feed_content}</p>
                                            <div class="row mb-0 mt-2 btnViewPost"  data-feed_id="${data[i].feed_id}">
                                                <div class="grey-text col s6 p-0"> ${enabled} <br>
                                                    <time class="timeago" datetime="${data[i].feed_date.replace(" ", "T")}+0800">${data[i].feed_date}</time>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                               `
                    $("#new_shared_thoughts").append(html);
                    $('.dropdown-trigger').dropdown();
                    $(".modal-dismissable").modal();
                }
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
                    getFeed();
                    sys_success('Post has been deleted')
                } else {
                    sys_error();
                }
            }
        });
    }
    function admin_toggle_feed_privacy(feed_id, enabled) {
        $.ajax({
            type: "POST",
            url: base_url + "main/admin_toggle_feed_privacy",
            data: { feed_id, enabled },
            success: function (data) {
                if (data.success == 1) {
                    getFeed();
                    sys_success('Post visibility has been updated')
                } else {
                    sys_error();
                }
            }
        });
    }

    $("#new_shared_thoughts").delegate(".btnViewPost", "click", function () {
        var feed_id = $(this).data('feed_id');
        $(".btnclosemodalpost").attr('disabled', true).addClass('disabled')
        $.ajax({
            type: "get",
            url: base_url + "main/getFeedInfo/" + feed_id,
            success: function (data) {
                $("#viewPostModal").modal('open')
                $("#viewPostModal > .modal-content > div").html(data.feed_content)
                $(".btnclosemodalpost").attr('disabled', false).removeClass('disabled')
            }
        });
    })
    $(".btnclosemodalpost").click(function (e) {
        e.preventDefault();
        $('#viewPostModal').modal('close');
        $("#viewPostModal > .modal-content > div").html(`<div class="progress blue lighten-4"><div class="indeterminate purple darken-1"></div></div>`)
    });

    $("#new_shared_thoughts").delegate(".deleteFeedBtn", 'click', function () {
        var value = $(this).data('value');
        sys_confirm('Delete', 'Are your sure you want to delete this post?', 'Yes', 'No', function () {
            delete_feed(value);
        })
    })

    $("#new_shared_thoughts").delegate(".admin_toggle_feed_privacy", 'click', function () {
        var value = $(this).data('value');
        var enabled = $(this).data('enabled');
        sys_confirm('Post Privacy', 'Are your sure you want to update privacy settings of this post?', 'Yes', 'No', function () {
            admin_toggle_feed_privacy(value, enabled);
        })
    })
})