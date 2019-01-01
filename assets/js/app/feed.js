$(function () {
    $(document).ready(function () {
        getFeed();
    });


    $(".feed_container").delegate(".btnViewPost", "click", function () {
        var feed_id = $(this).data('feed_id');
        $(".btnclosemodalpost").attr('disabled', true).addClass('disabled')
        $.ajax({
            type: "get",
            url: base_url + "main/getFeedInfo/" + feed_id,
            success: function (data) {
                $("#viewPostModal").modal('open')
                $("#viewPostModal > .modal-content").html(data.feed_content)
                $(".btnclosemodalpost").attr('disabled', false).removeClass('disabled')
            }
        });
    })

    $(".btnclosemodalpost").click(function (e) {
        e.preventDefault();
        $('#viewPostModal').modal('close');
        $("#viewPostModal > .modal-content").html(`<div class="progress blue lighten-4"><div class="indeterminate purple darken-1"></div></div>`)
    });


    function getFeed() {
        $.ajax({
            type: "get",
            url: base_url + "main/getFeed",
            success: function (data) {
                if (data.length <= 0) {
                    $(".feed_container").html('<center>No posts available</center>');
                } else {
                    $(".feed_container").html('');
                }
                for (var i = 0; i < data.length; i++) {
                    var show = false;
                    if (data[i].enabled == 1) {
                        show = true;
                    } else if (data[i].enabled == -2) {
                        if (data[i].user_id == localStorage.getItem("user_id")) {
                            show = true;
                        }
                    }
                    if (show) {
                        var html = `<a data-feed_id="${data[i].feed_id}" class="btnViewPost"> 
                                    <div class="card">
                                        <div class="card-content">
                                            <p class="truncate">${data[i].feed_content}</p>
                                            <div class="row mb-0 mt-2">
                                                <div class="grey-text col s6 p-0"><time class="timeago" datetime="${data[i].feed_date.replace(" ", "T")}+0800">${data[i].feed_date}</time></div>
                                                <div class="grey-text col s6 p-0 text-right">By: ${data[i].feed_op}</div>
                                            </div>
                                        </div>
                                    </div>
                               </a>`
                        $(".feed_container").append(html);
                    }
                }
                $("time.timeago").timeago();
            }
        });
    }
})