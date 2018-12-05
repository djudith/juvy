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

    $("#answerModal, #answerContainerOption").delegate(".user_choose_btn", "click", function () {
        $("#answerContainerOption").empty()
        var pattern = $(this).data('pattern');
        var display = $(this).data('display');
        user_choose(pattern, display);
    })

    $("#answerModal, #answerContainerOption").delegate(".user_choose_a", "click", function () {
        $("#answerContainerOption").empty()
        var pattern = $(this).data('pattern');
        location.href = pattern
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
                if (answers[i].returnForm == "button") {
                    answers_html += `<a data-pattern="${answers[i].pattern}" data-display="${answers[i].display}" class="chat_user_btn user_choose_btn waves-effect waves-theme-gradient">
                                        ${answers[i].display}
                                    </a>`;
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

})