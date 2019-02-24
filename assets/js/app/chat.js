$(function () {
    isLoggedIn();

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



    // for undefined answer idadagdag nya to sa unahan ng last chat ni juvy
    const fallback_response = ["Hmm. Di ko gets.", "Di ko mabasa masyado.", "Sorry ah nag charge lang ako."];
    var fallback_response_called = false;

    // json array ng response ni juvy base sa kung ano ung nishare ni user
    const sharing_response = [
        {
            "pattern": "family,mama,nanay,mom,kua,kuya,ate,bro,sister,papa,tatay,father,dad,pamilya",
            "template": [
                "Ah about sa pamilya pala %cs%, hindi naman talaga madali kapag usapang problema ng pamilya >> parang kakambal na kasi ng buhay ang problema, di yan mawawala sa pamilya >> minsan akala naten pinagtitripan na tayo eh >> pero kapag nalampasan naman naten magiging isang aral o alaala nalang yng problemang akala naten wala ng solusyon. Diba %cs% ?",

                "Ah tungkol pala sa pamilya %cs% Kapag usapang pamilya talaga iba eh noh? iba yung impact saten >> dumadating talaga sa puntong susukuan mo sa sobrang hirap o kaya naman dahil hindi mo kinakaya >> pero ang mahalaga naman pagtapos naten sukuan sinusubukan ulit nating kayanin.",

                "Hindi nga madali yang pinagdadaanan mo lalo na kung tungkol sa pamilya %cs% >> pero kapag dumating sa puntong hindi mo na kaya, ipahinga mo lang saglit, kakayanin mo na ulit ng maraming beses. >> Ganyan naman tayo diba? Yung problema ang sumusuko saten hindi tayo HAHAHAHAHA",

                "Problema nga yan kung tungkol sa pamilya %cs%."
            ],
            "return": "txtbox",
            "nextPattern": []
        },
        {
            "pattern": "teacher,guro,guard,school,grades,maam,mam,ser,sir,classmates,kaklase,titser,grado,eskwelahan,marka",
            "template": [
                "Ah about pala sa school >> take it easy %cs%, daaanan mo lang yung ganyang stress, classmate mo man yan, grades o si maam at sir na madaming pinapagawa hahahaha >> di ko sinasabing madali yang problema mo ah >> ayoko lang isipin mong wala ng solusyon yan. kaya naman diba? isipin mo nalang matatapos ka din HAHAHAHA",
                "About sa studies mo pala, di naman madali magaral eh di mawawala ang stress and pressure, lahat naman nakakaranas niyan, iba't ibang issue nga lang, yung iba about sa teacher na mababa magbigay ng grades o si classmate na pabida at walang pakisama hahahaha >> di ka nag-iisa tignan mo mga post sa facebook puro problema ng estudyante about sa pag-aaral diba %cs%? HAHAHAHA",
                "Nako problema nga yan kung stress kana dahil sa studies mo %cs% >> madami talagang struggle sa pagaaral iba iba nga lang, yung iba nga si kuyang guard ang problema kasi mas masungit pa sa principal hahahaha >> di mawawala yang struggles mo hanggat nagaaral ka, diskarte lang talaga para malampasan mo."
            ],

            "return": "txtbox",
            "nextPattern": []
        },
        {
            "pattern": "friends,kaibigan,tropa,barkada,bestfriend",
            "template": [
                "Ah tungkol pala sa pagkakaibigan %cs% >> mahalagang parte nga naman ng buhay ang kaibigan kaya malamang isa yan sa dahilan bat tayo nalulungkot.",

                "About pala sa tropa kaya pala medyo di maganda araw mo >> wala naman problemang di natapos, kaya mo yan hindi man sa mga oras na to pero baka mamaya pwede na.",

                "Kaya pala malungkot ka kasi tungkol pala sa tropa ang iniisip mo >> pero isang patunay na mahal mo sila dahil iniisip mo sila alam man nila o hindi.",
                
                "Medyo hindi nga maganda araw mo kung tungkol sa kaibigan iniisip mo >> malaking parte sila ng buhay kaya talagang naapektuhan tayo."
            ],

            "return": "txtbox",
            "nextPattern": []
        },
    ]
    const sharing_response_default = { //When the shared msg is non of the above
        "pattern": "somethingShared",
        "template": [
            "Di ko ma-imagine yung hirap ng pinagdadaanan mo >> thank you kasi naishare mo yan saken. >> Isipin mo nalang matatapos din yan %cs%, sa tamang pagkakataon.",
            "Di ko alam kung paano mo yan nakakayanan %cs% pero sigurado akong malakas ka kasi kinakaya mo bawat segundo. >> Madami ka pang pagdadaanan kailangan mo lang kayanin ngayon",
            "Problema nga yan kung ganon. Buti naman naishare mo yan saken para naman di mo iniisip mag-isa. Sarap talaga minsan may makausap tungkol sa problema eh, nakakagaan ng loob, diba %cs%.",
            "Hindi nga madali yang pinagdadaanan mo %cs% >> salamat at naishare mo yan saken ngayon >> sana gumaan kahit papaaano ang loob mo.",
            "Hirap nga yan %cs% >> Hindi nga madali >> Pero kakayanin diba?"
        ],
        "return": "txtbox",
        "nextPattern": []
    }
    // call sign if male of female
    const cs_fm = {
        M: ['pre', 'par', 'tol'], // kapag M(male) dito mo lagay mga list ng tawagan nila haha
        F: ['sis', 'be'], // kapag F(female) dito mo lagay mga list ng tawagan nila haha
    };
    let cs; // eto dito iistore ung randomized tawagan nila depende sa list

    // dito save ung pinaka last na sinabe ni juvy
    var latest_juvy_response;

    // dito naman save ung mga possible next patterns lang na pede puntahan ng convo. 
    // so unang una pagkaload ng page, ung startConversation ang pattern naten .
    var nextPattern = ["startConversation"];

    // flag ng sharing , kpag gusto mag share ni user magiging true to
    var isSharing, sharing = false;
    var shareCount = 1;

    // eto ung last reply ni juvy after that 2nd reply ni user during sharing event 
    const sharing_last_response = {
        "pattern": "2ndSharingReply",
        "template": [
            "Basta kahit anong problema lagpasan mo lang ok? Wag mong tatambayan. >> Thank you sa pagshare saken nyan %cs%. >> Nga pala may ikekwento ka pa ba o gusto mo naman manuod ng video o kaya makinig ng music?>> Baka sakaling mas makagaan ng loob mo?",

            "Minsan kelangan talagang dumating ng problema para makita kung gaano tayo katatag eh.>> pero wag mong isiping pinapahirapan ka isipin mong pinapapatatag ka lang ng panahon %cs%.>> May isheshare ka pa ba? Or gusto mo naman ng video at music?",

            "Kahit ano pang problema ishare mo lang para kahit papano gumaan naman yang kalooban mo >> wag mong kimkimin mag-isa kasi di ka naman nang-iisa eh >> May videos ako baka trip mo mainspire? or gusto mo naman music para chill lang? o abaka may ishehsrae ka pa?"
        ],
        "return": "txtbox",
        "nextPattern": [
            "usap",
            "share",
            "talk",
            "kwento",
            "kuwento",
            "music",
            "tugtog",
            "kinig",
            "kanta",
            "video",
            "nuod",
            "bye",
            "goodbye",
            "paalam",
            "babye"
        ]
    };

    // eto ung speed ng pag tatype ni juvy
    // var juvy_bubble_delay = 1; // for debugging, remove juvy typing delay
    var juvy_bubble_delay = Math.floor(Math.random() * (1500 - 500 + 1)) + 1000;


    // search in json (deprecated)
    function search(arr, val = '') {
        for (i = 0; i < arr.length; i++) {
            if (arr[i].pattern == val) {
                // console.log(arr[i])
                return arr[i];
            }
        }
        return fallbxack_response;
    }

    // search in json base on pattern
    function search_matching(arr, val = '') {
        var tmp;
        var sharingPatterns = ['usap', 'share', 'talk', 'kwento', 'kuwento']; // take note kung ano ang patterns ng nasa aiml.json about sa pag share or usap, dapat un ang andito para madetect naten kung nag sheshare ba tong si user o hndi...
        var tmpNxtPattern = nextPattern;
        var flagForSearch = false;

        if (tmpNxtPattern.length != 0) {
            for (var nx = 0; nx < tmpNxtPattern.length; nx++) {
                if (val.includes(tmpNxtPattern[nx])) {
                    flagForSearch = true;
                }
            }
        } else {
            flagForSearch = true;
        }

        if (flagForSearch) {
            for (i = 0; i < arr.length; i++) {
                tmp = arr[i].pattern.split(",");
                for (ii = 0; ii < tmp.length; ii++) {
                    if (val.includes(tmp[ii])) {
                        if ($.inArray(tmp[ii], sharingPatterns) !== -1) {
                            sharing = true;
                            isSharing = true;
                        }
                        nextPattern = arr[i].nextPattern;
                        // console.log(nextPattern)
                        fallback_response_called = false;
                        return arr[i];
                        // console.log(arr[i])
                    }
                }
            }
        }
        fallback_response_called = true;
        return latest_juvy_response;
    }

    // search ng tamang reply ni juvy kapag nag share si user
    function search_juvy_reply_in_sharing(arr, val = '') {
        var tmp;
        for (i = 0; i < arr.length; i++) {
            tmp = arr[i].pattern.split(",");
            for (ii = 0; ii < tmp.length; ii++) {
                if (val.includes(tmp[ii])) {
                    nextPattern = arr[i].nextPattern;
                    return arr[i];
                }
            }
        }
        return sharing_response_default;
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
        var pattern1 = pattern.toLowerCase();
        var display1 = display.toLowerCase();
        console.log(display)
        
        const html = `<div class="baloon1">${display1}</div>`
        $(".chat-container").append(html)
        $(".user_textarea").fadeOut('fast');
        $("html, body").animate({ scrollTop: $(document).height() }, 500); // force the page to scroll down

        $("#answerModal").modal('close');

        if (isSharing) {
            // let data = search_juvy_reply_in_sharing(sharing_response, pattern); // "somethingShared" ung pattern na pag nag share na si user ng something kakemehan nya
            // let say = data['template'][Math.floor((Math.random() * data['template'].length))];
            // juvy_say(say, data, pattern);
            // isSharing = false;
            if (shareCount == 2) {
                let data = sharing_last_response;
                let say = data['template'][Math.floor((Math.random() * data['template'].length))];
                juvy_say(say, data, "2ndSharingReply");
                isSharing = false;
                shareCount = 0;
            } else {
                let data = search_juvy_reply_in_sharing(sharing_response, pattern1); // "somethingShared" ung pattern na pag nag share na si user ng something kakemehan nya
                let say = data['template'][Math.floor((Math.random() * data['template'].length))];
                juvy_say(say, data, pattern1);
                shareCount += 1;
            }
        } else {
            let data = search_matching(aiml, pattern1);
            let say = data['template'][Math.floor((Math.random() * data['template'].length))];
            juvy_say(say, data, pattern1);
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
                if (fallback_response_called) {
                    $(".chat-container").append(`<div class="baloon2">${fallback_response[Math.floor((Math.random() * fallback_response.length))].replace("%cs%", cs)}</div>`);
                    fallback_response_called = false;
                }
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

    // click event ng mga choose buttons sa choicesm
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

    $(".shareCancel").click(function (e) {
        e.preventDefault();
        isSharing = false; // reset sharing conditions
        shareCount = 0; // reset sharing conditions
        var pattern = "c4nc3l$h4r!ng" // eto yun pattern sa aiml.json na pupuntahan pag cinancel
        var display = "Di ko nalang pala muna isheshare"; // eto yung lalabas na sinabe ni user if niclick nyaung cancel.
        user_say(pattern, display)
        $("#reply_txtbox").val('').detach().prependTo('.user_textarea > .d-flex ') // empty yung textbox tapos ibalik sa dati nyang puwesto na nasababa..
        $('#sharingTipsModal').modal('close');
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
        if ($("#reply_txtbox").val() != "") {
            $(".btnSend").click();
            $("#reply_txtbox").detach().prependTo('.user_textarea > .d-flex ')
            $('#sharingTipsModal').modal('close');
        } else {
            $("#reply_txtbox").focus()
        }
    });

    refreshVerified();
    setTimeout(() => {
        $(".chat-avatar img").attr('src', './assets/img/avatar/' + localStorage.getItem("juvy_avatar"));
    }, 600);

    // Filter Bad Words
    //function BlockBadWords(content) {
    //    var badWords = /tang ina|hayup|hayop|ogag|suicide|mamatay|pakamatay|magpakamatay|fuck|shit|puta|pota|fck|fvck|vovo|tnga|gago|king ina|kupal|putang ina|putangina|pota|bobo|tanga|inutil/gi;
    //    return content.replace(badWords, "****");
    //}

    //$("textarea").on("keydown", function (e) {
    //    var newc = BlockBadWords($(this).val());
    //    $(this).val(newc)
    //});

})