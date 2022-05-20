var tmhandler;

/* Timer */
function countdown(className, seconds) {
    var element;

    function updateTimer(t) {
        element.innerHTML = t;
        if (t == 0) {
            // 시간 다됐을 경우
            return
        } else {
            tmhandler = setTimeout(updateTimer, 1000, t - 1);
        }
    }

    element = document.getElementsByClassName(className);
    if (element.length != 0) {
        element = element[0];
        updateTimer(seconds);
    } else {
        alert("no timer");
    }
}

function startTimer() {
    // clearTimeout(tmhandler);
    // countdown('countdown', 10);
}
