$(function () {
    const aiml = [
        {
            "pattern": "greet",
            "returnForm": "button",
            "template": [
                "Good Day! What do you want to do?",
            ],
            "answers": [
                {
                    "pattern": "listen",
                    "display": "Listen to music"
                },
                {
                    "pattern": "share",
                    "display": "Share something"
                },
                {
                    "pattern": "watch",
                    "display": "Watch Video"
                }
            ]
        },
        {
            "pattern": "listen",
            "returnForm": "button",
            "template": [
                "What genre of music do you want to listen to?"
            ],
            "answers": [
                {
                    "pattern": "listen_to_pop",
                    "display": "Pop"
                },
                {
                    "pattern": "listen_to_gospel",
                    "display": "Gospel"
                }
            ]
        },
        {
            "pattern": "listen_to_pop",
            "returnForm": "button",
            "template": [
                "I have prepared a list of pop music to you. Choose 1 below."
            ],
            "answers": [
                {
                    "pattern": "listen_to_pop_track1",
                    "display": "Pop Song #1"
                },
                {
                    "pattern": "listen_to_pop_track2",
                    "display": "Pop Song #2"
                }
            ]
        },
        {
            "pattern": "listen_to_pop_track1",
            "returnForm": "audio",
            "template": [
                "Pop Song #1 is now playing"
            ],
            "answers": [
                {
                    "pattern": "",
                    "display": ""
                },
            ]
        }
    ];




    $(window).bind('beforeunload', function () {
        // return 'Are you sure you want to leave?';
    });


    $(document).ready(function () {
        let data = search(aiml, 'greet');
        let say = data['template'][Math.floor((Math.random() * data['template'].length))];
        setTimeout(() => {
            juvy_say(say, data['answers'], data['returnForm']);
            $(".answerModalTrigger").fadeIn();
        }, 1000);
    });



    function search(arr, val = '') {
        for (i = 0; i < arr.length; i++) {
            if (arr[i].pattern == val) {
                // console.log(arr[i])
                return arr[i];
            }
        }
    }

    $("#answerModal").delegate(".user_choose_btn","click",function(){
        var pattern = $(this).data('pattern');
        var display = $(this).data('display');
        user_choose(pattern, display);
    })

    function user_choose(pattern, display) {
        const html = `<div class="baloon1">${display}</div>`
        $(".chat-container").append(html)

        $("#answerModal").modal('close');

        let data = search(aiml, pattern);
        let say = data['template'][Math.floor((Math.random() * data['template'].length))];
        setTimeout(() => {
            juvy_say(say, data['answers'], data['returnForm']);
        }, 1000);
    }

    function juvy_say(words, answers, returnForm) {


        const html = `<div class="baloon2">${words}</div>`
        $(".chat-container").append(html)

        let answers_html = '';
        for (var i = 0; i < answers.length; i++) {
            if (returnForm == "button") {
                $(".answerModalTrigger").html('Answer...');
                answers_html += `<a data-pattern="${answers[i].pattern}" data-display="${answers[i].display}" class="waves-effect waves-theme-gradient btn-flat user_choose_btn">
                                    ${answers[i].display}
                                </a> `;
            }
            if (returnForm == "audio") {
                $(".answerModalTrigger").html('Play options...');
                answers_html += `<audio controls>
                                <source src="horse.ogg" type="audio/ogg">
                            </audio>`;
            }
        }
        $("#answerModal > .modal-content").html(answers_html);
    }

})