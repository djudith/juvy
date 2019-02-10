$(function () {
    // music

    // array of music
    const music_array = (function () {
        var json = null;
        $.ajax({
            'async': false,
            'global': false,
            'url': "./assets/json/music.json",
            'dataType': "json",
            'success': function (data) {
                json = data;
            }
        });
        return json;
    })();

    // choosing a song
    $("#musicModal").delegate(".play_music_btn", 'click', function () {
        $(".play_music_bg").fadeIn()
        $(".play_music_bg p.play_music_title").text($(this).data("songtitle"))
        $(".play_music_bg span.original_singer").text($(this).data('original_singer'));
        $(".play_music_bg span.uploaded_by").text($(this).data('uploaded_by'));
        $(".play_music_bg span.source").text($(this).data('source'));
        $(".play_music_bg span.type_of_cc").text($(this).data('type_of_cc'));
    })

    // for viewing the credits of song
    $(".btnViewCreditsMusic").click(function (e) {
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


    // json of music for initializing the songs
    const music_json = {
        Every_Girl_is_a_Super_Girl: {
            id: "Every_Girl_is_a_Super_Girl",
            mp3: "./assets/music/girlpower.mp3",
        },
        Scars_To_Your_Beautiful: {
            id: "Scars_To_Your_Beautiful",
            mp3: "./assets/music/scarstoyourbeautiful.mp3",
        },
        Fight_Song: {
            id: "Fight_Song",
            mp3: "./assets/music/videoplayback.mp3",
        },
        Stand_By_You: {
            id: "Stand_By_You",
            mp3: "./assets/music/standbyyou.mp3",
        },
        Perfect: {
            id: "Perfect",
            mp3: "./assets/music/perfect.mp3",
        },
        Love_Someone: {
            id: "Love_Someone",
            mp3: "./assets/music/lovesomeone.mp3",
        },
    };

    // we usd mbAudio plugin to handle our song
    $.mbAudio.sounds = music_json;

    // when the page is ready, run displayAllMusic function
    $(document).ready(displayAllMusic);


    // function for displaying all songs in the song list modal
    function displayAllMusic() {
        var content = '<p class="font-weight-bold mt-0">List of music just for you. Choose and tap any songs to listen to: </p>';
        for (var i = 0; i < music_array.length; i++) {
            content += `
            <button 
                class="chat_user_btn waves-effect waves-theme-gradient play_music_btn"
                data-songtitle="${music_array[i].songtitle.replace(/_/g, " ")}" 
                data-original_singer="${music_array[i].original_singer}"
                data-uploaded_by="${music_array[i].uploaded_by}"
                data-source="${music_array[i].source}"
                data-type_of_cc="${music_array[i].type_of_cc}"
                onclick="$.mbAudio.play('${music_array[i].songtitle}')"
            >
                ${music_array[i].songtitle.replace(/_/g, " ")}
            </button>`;
        }
        $("#musicModal > .modal-content").append(content);
    }

    // stop the sound
    function stopAllMusic() {
        for (var i = 0; i < music_array.length; i++) {
            $.mbAudio.pause(music_array[i].songtitle);
        }
        $(".play_music_bg").fadeOut();

        // hide the credits
        $(".creditsList").slideUp();
        $(".btnViewCredits").text("View Credits");
    }

    // the stop button in playing music
    $(".stopAllMusic").click(stopAllMusic);
})