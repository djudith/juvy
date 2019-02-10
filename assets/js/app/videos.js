$(function () {
    // video

    // array of video
    const video_array = (function () {
        var json = null;
        $.ajax({
            'async': false,
            'global': false,
            'url': "./assets/json/videos.json",
            'dataType': "json",
            'success': function (data) {
                json = data;
            }
        });
        return json;
    })();

    // choosing a song
    $("#videoModal").delegate(".play_video_btn", 'click', function () {
        $(".play_video_bg").fadeIn()
        $("#videoIframe").attr('src', $(this).data('source'));
    })

    // for viewing the credits of song
    $(".btnViewCreditsVideo").click(function (e) {
        e.preventDefault();
        var x = $(this)
        if (x.text() === "View Credits") {
            $(".creditsList").slideDown();
            x.text("Hide Credits");
        } else {
            $(".creditsList").slideUp();
            x.text("View Credits");
        }
    });


    // when the page is ready, run displayAllvideo function
    $(document).ready(displayAllvideo);


    // function for displaying all songs in the song list modal
    function displayAllvideo() {
        var content = '<p class="font-weight-bold mt-0">List of video just for you. Choose and tap any title to watch: </p>';
        for (var i = 0; i < video_array.length; i++) {
            content += `
            <button 
                class="chat_user_btn waves-effect waves-theme-gradient play_video_btn"
                data-videotitle="${video_array[i].videotitle.replace(/_/g, " ")}" 
                data-original_singer="${video_array[i].original_singer}"
                data-uploaded_by="${video_array[i].uploaded_by}"
                data-source="${video_array[i].source}"
                data-type_of_cc="${video_array[i].type_of_cc}"
                onclick="$.mbAudio.play('${video_array[i].videotitle}')"
            >
                ${video_array[i].videotitle.replace(/_/g, " ")}
            </button>`;
        }
        $("#videoModal > .modal-content").append(content);
    }
    // choosing a song
    $("#videoModal").delegate(".play_video_btn", 'click', function () {
        $(".play_video_bg").fadeIn()
        $(".play_video_bg p.play_video_title").text($(this).data("videotitle"))
        $(".play_video_bg span.uploaded_by").text($(this).data('uploaded_by'));
        $(".play_video_bg span.source").text($(this).data('source'));
        $(".play_video_bg span.type_of_cc").text($(this).data('type_of_cc'));
    })

    // stop the sound
    function stopAllvideo() {
        $(".play_video_bg").fadeOut();
        $("#videoIframe").attr('src', '');
        // hide the credits
        $(".creditsList").slideUp();
        $(".btnViewCreditsVideo").text("View Credits");
    }

    // the stop button in playing video
    $(".play_video_bg").delegate('.stopAllVideo', 'click', stopAllvideo);
})