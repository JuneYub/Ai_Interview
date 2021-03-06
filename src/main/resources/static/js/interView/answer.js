/* Recog*/
window.SpeechRecognition =
    window.SpeechRecognition || window.webkitSpeechRecognition;


let speechToText = "";

// 인스턴스 생성
// let recognition = new SpeechRecognition();

function setRecog() {

// true면 음절을 연속적으로 인식하나 false면 한 음절만 기록함
    recognition.interimResults = true;
// 값이 없으면 HTML의 <html lang="en">을 참고합니다. ko-KR, en-US
    recognition.lang = "ko-KR";
// true means continuous, and false means not continuous (single result each time.)
// true면 음성 인식이 안 끝나고 계속 됩니다.
    recognition.continuous = false;
// 숫자가 작을수록 발음대로 적고, 크면 문장의 적합도에 따라 알맞은 단어로 대체합니다.
// maxAlternatives가 크면 이상한 단어도 문장에 적합하게 알아서 수정합니다.
    recognition.maxAlternatives = 100;

    recognition.addEventListener("result", (e) => {
        let interimTranscript = "";
        for (let i = e.resultIndex, len = e.results.length; i < len; i++) {
            let transcript = e.results[i][0].transcript;
            if (e.results[i].isFinal) {
                speechToText += transcript;
                console.log("test: " + transcript);
            } else {
                interimTranscript += transcript;
                console.log("test2: " + transcript);
            }
        }
        console.log("이벤트 처리됨")
    });
}

// 음성인식이 끝나면 자동으로 재시작합니다. //중간에 끊기는 경우 방지
// recognition.addEventListener("end", recognition.start);

function startrecog(){
    // 음성 인식 시작
    recognition = new SpeechRecognition();
    setRecog()
    recognition.start();
}

function endRecog(){
    recognition.stop();
}

/* Timer */
var tmhandler;
function start(className, seconds, endFunction) {
    var element;

    function updateTimer(t) {
        element.innerHTML = t;
        if (t == 0) {
            endFunction(speechToText)
            speechToText = ""
            endRecog()
            return
        } else {
            tmhandler = setTimeout(updateTimer, 1000, t - 1);
        }
    }

    element = document.getElementsByClassName(className);
    if (element.length != 0) {
        element = element[0];
        element.innerHTML = seconds;
        startrecog()
        updateTimer(seconds);
    } else {
        alert("no timer");
    }
}