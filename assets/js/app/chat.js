$(function () {

    // json array of the chat 
    const aiml = (function () {
        var json = null;
        $.ajax({
            'async': false,
            'global': false,
            'url': "./assets/json/aiml.json",
            'dataType': "json",
            'success': function (data) {
                json = data;
            }
        });
        return json;
    })();

    // for undefined answer
    const fallback_response = {
        "pattern": "fallback_response",
        "template": [
            "Oops! >> I didn't get that >> Ano ngang sinasabi mo ulet? ",
            "Sorry, chinarge ko kase si phone >> Ano nga ulet yun?",
            "Hmm. >> Currently, Di ko alam ang isasagot sa sinabe mo sorry."
        ],
        "return": "txtbox"
    };

    // call sign if male of female
    const cs_fm = {
        M: ['pre', 'par', 'man', 'tol'],
        F: ['sis', 'bii', 'be', 'mars'],
    };
    let cs;

    // dito save ung pinaka last na sinabe ni juvy
    var latest_juvy_response;

    // flag ng sharing , kpag gusto mag share ni user magiging true to
    var isSharing, sharing = false;

    // eto ung speed ng pag tatype ni juvy
    var juvy_bubble_delay = 1;
    // var juvy_bubble_delay = Math.floor(Math.random() * (1500 - 500 + 1)) + 1000;


    // search in json (deprecated)
    function search(arr, val = '') {
        for (i = 0; i < arr.length; i++) {
            if (arr[i].pattern == val) {
                // console.log(arr[i])
                return arr[i];
            }
        }
        return fallback_response;
    }

    // search in json
    function search_matching(arr, val = '') {
        var tmp;
        var sharingPatterns = ['usap', 'talk', 'share'];
        for (i = 0; i < arr.length; i++) {
            tmp = arr[i].pattern.split(",");
            for (ii = 0; ii < tmp.length; ii++) {
                if (val.includes(tmp[ii])) {
                    if ($.inArray(tmp[ii], sharingPatterns) !== -1) {
                        sharing = true;
                        isSharing = true;
                    }
                    return arr[i];
                    // console.log(arr[i])
                }
            }
        }
        // console.log(fallback_response);
        return latest_juvy_response;
    }

    // detect what gender then set callsign
    function get_cs_callsign() {
        var gender = localStorage.getItem("gender")
        cs = cs_fm[gender][Math.floor((Math.random() * cs_fm[gender].length))];
    }

    // start conversation
    function startConversation() {
        let data = search_matching(aiml, 'startConversation');
        let say = data['template'][Math.floor((Math.random() * data['template'].length))];
        juvy_say(say, data, data['return']);
    }

    // kpag nag reply si user
    function user_say(pattern, display) {
        const html = `<div class="baloon1">${display}</div>`
        $(".chat-container").append(html)
        $(".user_textarea").fadeOut('fast');
        $("html, body").animate({ scrollTop: $(document).height() }, 500); // force the page to scroll down

        $("#answerModal").modal('close');

        if (isSharing) {
            let data = search_matching(aiml, 'somethingShared');
            let say = data['template'][Math.floor((Math.random() * data['template'].length))];
            juvy_say(say, data, pattern);
            isSharing = false;
        } else {
            let data = search_matching(aiml, pattern);
            let say = data['template'][Math.floor((Math.random() * data['template'].length))];
            juvy_say(say, data, pattern);
        }
    }


    // eto reply ni juvy
    function juvy_say(words, data, pattern) {
        latest_juvy_response = data;
        var arrwords = words.split(">>"); // make an array out of the string, separator is >>
        var i = 0, nth = arrwords.length; // used for looping with delay

        function add_chat_bubble() { // function for adding typing animation, then message
            $(".chat-container").append(`<div class="baloon2 typing_bubble"><img src="./assets/img/typing.gif" width="30"></div>`)
            setTimeout(() => {
                $(".typing_bubble").remove();
                $(".chat-container").append(`<div class="baloon2">${arrwords[i].replace("%cs%", cs)}</div>`)
                $("html, body").animate({ scrollTop: $(document).height() }, 500); // force the page to scroll down.

                i++;

                if (i < nth) {  // if not yet done typing si juvy, still add bubbles

                    add_chat_bubble()

                } else { // if everything has been said by juvy, now display the choices to user 

                    if (data.return == "txtbox") {
                        $(".user_textarea").fadeIn('fast', function () {
                            setTimeout(() => {
                                $("#reply_txtbox").focus();
                            }, 10);
                        });
                    } else {
                        display_answers()
                    }


                }
            }, juvy_bubble_delay);
        }
        var display_answers = function () { //  function for displaying choices after juvy say something.
            let answers = data.answers;
            let answers_html = '';
            let audioPlayFlag = false;
            for (var i = 0; i < answers.length; i++) {
                if (answers[i].returnForm == "music_modal") {
                    answers_html += `<a href="#musicModal" class=" modal-trigger chat_user_btn waves-effect waves-theme-gradient">
                                        ${answers[i].display}
                                    </a>`;
                }
                if (answers[i].returnForm == "video_modal") {
                    answers_html += `<a href="#videoModal" class=" modal-trigger chat_user_btn waves-effect waves-theme-gradient">
                                        ${answers[i].display}
                                    </a>`;
                }
                if (answers[i].returnForm == "button") {
                    // answers_html += `<div class=" d-inline-block"><a data-pattern="${answers[i].pattern}" data-display="${answers[i].display}" class="chat_user_btn user_say_btn waves-effect waves-theme-gradient">
                    //                     ${answers[i].display}
                    //                 </a></div>`;
                    answers_html += `<div class="answerCon"><a data-pattern="${answers[i].pattern}" data-display="${answers[i].display}" class="chat_user_btn user_say_btn waves-effect waves-theme-gradient">
                                        ${answers[i].display}
                                    </a></div>`;
                }
                if (answers[i].returnForm == "hyperlink") {
                    answers_html += `<a data-pattern="${answers[i].pattern}" data-display="${answers[i].display}" class="chat_user_btn user_say_a waves-effect waves-theme-gradient">
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






    // ------------- DOM EVENTS

    // pagka load ng pag eto na ung gagawin
    $(document).ready(function () {
        startConversation();
        get_cs_callsign();
    });

    // click event ng mga choose buttons sa choices
    $("#musicModal, #answerModal, #answerContainerOption").delegate(".user_say_btn", "click", function () {
        $("#answerContainerOption").empty()
        var pattern = $(this).data('pattern');
        var display = $(this).data('display');
        user_say(pattern, display);
        $("#musicModal, #answerModal").modal('close')
    })

    // click event ng mga choose buttons sa choices
    $("#musicModal, #videoModal, #answerModal, #answerContainerOption").delegate(".user_choose_btn", "click", function () {
        $("#answerContainerOption").empty()
        var pattern = $(this).data('pattern');
        var display = $(this).data('display');
        user_say(pattern, display);
        $("#musicModal, #videoModal, #answerModal").modal('close')
    })

    // click event ng mga hyperlink sa answer choices
    $("#answerModal, #answerContainerOption").delegate(".user_say_a", "click", function () {
        $("#answerContainerOption").empty()
        var pattern = $(this).data('pattern');
        location.href = pattern
    })

    // click send button
    $(".btnSend").click(function (e) {
        e.preventDefault();
        var reply_txt = $("#reply_txtbox");
        if (reply_txt.val() == "") {
            reply_txt.focus()
        } else {
            user_say(reply_txt.val(), reply_txt.val())
            reply_txt.val('')
        }
    });

    // pagka type palang ni user, mag oopen na ung modal ng sharing para fullscren ung sharing nya
    $("#reply_txtbox").keydown(function () {
        if (sharing) {
            $('#sharingTipsModal').modal('open');
            $("#reply_txtbox").detach().appendTo('.sharingTipsModalContent')
            setTimeout(() => {
                $("#reply_txtbox").focus();
            }, 10);
            sharing = false;
        }
    })

    // sa laptop para ctrl + enter ung send
    $("#reply_txtbox").on('keyup', function (e) {
        if (e.ctrlKey && e.keyCode == 13) {
            $(".btnSend").click()
        }
    });

    // ung send button sa modal ng sharing
    $(".shareSend").click(function (e) {
        e.preventDefault();
        $(".btnSend").click();
        $("#reply_txtbox").detach().prependTo('.user_textarea > .d-flex ')
        $('#sharingTipsModal').modal('close');
    });

    refreshVerified();
    setTimeout(() => {
        $(".chat-avatar img").attr('src', './assets/img/avatar/' + localStorage.getItem("juvy_avatar"));
    }, 600);

})