$(function () {

    const aiml = (function () {
        var json = null;
        $.ajax({
            'async': false,
            'global': false,
            'url': "./aiml.json",
            'dataType': "json",
            'success': function (data) {
                json = data;
            }
        });
        return json;
    })();
    const fallback_response = {
        "pattern": "fallback_response",
        "template": [
            "Oops! >> I didn't get that >> Wanna do something else? ",
            "Hmm, I've never heard that before >> Not sure how to respond to that >> Wanna do something else?",
            "Sorry, I was trying to charge my phone >> What were you trying to say?"
        ],
        "answers": [
            {
                "returnForm": "button",
                "pattern": "listen",
                "display": "Listen to music"
            },
            {
                "returnForm": "button",
                "pattern": "share",
                "display": "Share something"
            },
            {
                "returnForm": "button",
                "pattern": "watch",
                "display": "Watch Video"
            }
        ]
    };


    $(window).bind('beforeunload', function () {
        // return 'Are you sure you want to leave?';
    });

    $(document).ready(function () {
        let data = search(aiml, 'greet');
        let say = data['template'][Math.floor((Math.random() * data['template'].length))];
        juvy_say(say, data['answers'], data['returnForm']);
    });



    function search(arr, val = '') {
        for (i = 0; i < arr.length; i++) {
            if (arr[i].pattern == val) {
                // console.log(arr[i])
                return arr[i];
            }
        }
        return fallback_response;
    }

    $("#musicModal, #answerModal, #answerContainerOption").delegate(".user_choose_btn", "click", function () {
        $("#answerContainerOption").empty()
        var pattern = $(this).data('pattern');
        var display = $(this).data('display');
        user_choose(pattern, display);
        $("#musicModal, #answerModal").modal('close')
    })

    $("#answerModal, #answerContainerOption").delegate(".user_choose_a", "click", function () {
        $("#answerContainerOption").empty()
        var pattern = $(this).data('pattern');
        location.href = pattern
    })

    $("#musicModal").delegate(".play_music_btn", 'click', function () {
        $(".play_music_bg").fadeIn()
        $("p.play_music_title").text($(this).data("songtitle"))
    })

    function user_choose(pattern, display) {
        const html = `<div class="baloon1">${display}</div>`
        $(".chat-container").append(html)

        $("#answerModal").modal('close');

        let data = search(aiml, pattern);
        let say = data['template'][Math.floor((Math.random() * data['template'].length))];
        juvy_say(say, data['answers'], pattern);
    }
    function juvy_say(words, answers, pattern) {
        var arrwords = words.split(">>"); // make an array out of the string, separator is >>
        var i = 0, nth = arrwords.length; // used for looping with delay
        var add_chat_bubble = function () { // function for adding typing animation, then message
            $(".chat-container").append(`<div class="baloon2 typing_bubble"><img src="./assets/img/typing.gif" width="30"></div>`)
            setTimeout(() => {
                $(".typing_bubble").remove();
                $(".chat-container").append(`<div class="baloon2">${arrwords[i]}</div>`)
                $("html, body").animate({ scrollTop: $(document).height() }, 500); // force the page to scroll down
                i++;
                if (i < nth) { // condition if juvy is done talking or not
                    add_chat_bubble() // if not yet, still add bubbles
                } else {
                    display_answers() // if everything has been said by juvy, now display the choices to user 
                }
            }, Math.floor(Math.random() * (2000 - 1000 + 1)) + 1000);
        }
        var display_answers = function () { //  function for displaying choices after juvy say something.
            let answers_html = '';
            let audioPlayFlag = false;
            for (var i = 0; i < answers.length; i++) {
                if (answers[i].returnForm == "music_modal") {
                    answers_html += `<a href="#musicModal" class=" modal-trigger chat_user_btn waves-effect waves-theme-gradient">
                                        ${answers[i].display}
                                    </a>`;
                }
                if (answers[i].returnForm == "button") {
                    // answers_html += `<div class=" d-inline-block"><a data-pattern="${answers[i].pattern}" data-display="${answers[i].display}" class="chat_user_btn user_choose_btn waves-effect waves-theme-gradient">
                    //                     ${answers[i].display}
                    //                 </a></div>`;
                    answers_html += `<div class="answerCon"><a data-pattern="${answers[i].pattern}" data-display="${answers[i].display}" class="chat_user_btn user_choose_btn waves-effect waves-theme-gradient">
                                        ${answers[i].display}
                                    </a></div>`;
                }
                if (answers[i].returnForm == "hyperlink") {
                    answers_html += `<a data-pattern="${answers[i].pattern}" data-display="${answers[i].display}" class="chat_user_btn user_choose_a waves-effect waves-theme-gradient">
                                        ${answers[i].display}
                                    </a>`;
                }
                if (answers[i].returnForm == "audio") {
                    $("#answerContainerOption").hide();
                    answers_html += answers[i].display;
                    audioPlayFlag = true
                }
            }
            $("#answerContainerOption").html(answers_html);
            if (audioPlayFlag) {
                setTimeout(() => {
                    var x = document.getElementById(pattern);
                    x.play();
                }, 500);
                setTimeout(() => {
                    $("#answerContainerOption").show();
                    $("html, body").animate({ scrollTop: $(document).height() }, 500);
                }, 3000);
            }
            $("html, body").animate({ scrollTop: $(document).height() }, 500); // force page to scroll down
        }
        add_chat_bubble(); // call the function for adding chat bubble
    }




    // music
    const music_array = ['Every_Girl_is_a_Super_Girl', 'Scars_To_Your_Beautiful', 'Fight_Song', 'Stand_By_You','Perfect','Love_Someone'];

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
    $.mbAudio.sounds = music_json;

    $(document).ready(displayAllMusic);


    function displayAllMusic() {
        var content = '<p class="font-weight-bold mt-0">List of music just for you. Choose and tap any songs to listen to: </p>';
        for (var i = 0; i < music_array.length; i++) {
            content += `<button class=" chat_user_btn waves-effect waves-theme-gradient play_music_btn"
            data-songtitle="${music_array[i].replace(/_/g," ")}" onclick="$.mbAudio.play('${music_array[i]}')">${music_array[i].replace(/_/g," ")}</button>`;
        }
        $("#musicModal > .modal-content").append(content);
    }


    function stopAllMusic() {
        for (var i = 0; i < music_array.length; i++) {
            $.mbAudio.pause(music_array[i]);
        }
        $(".play_music_bg").fadeOut();
    }

    $(".stopAllMusic").click(stopAllMusic);

})