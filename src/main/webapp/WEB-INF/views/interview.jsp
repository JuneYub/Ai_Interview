<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>타이머</title>
    <style type="text/css">
        div {
            font-family: Verdana, Arial, sans-serif;
            font-size: 25px;
            font-weight: bold;
            text-decoration: none;
        }
    </style>


</head>
<body>

<div class="countdown">00</div>
<input type="button" onclick="startTimer();" value="답변 제출"/>
<hr/>

<script type="text/javascript">

    var tmhandler;

    /* Timer */
    function countdown(className, seconds) {
        var element;

        function updateTimer(t) {
            element.innerHTML = t;
            if(t == 0){
                // 시간 다됐을 경우
                return
            }
            else {
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

    countdown('countdown', 30);  // seconds

    function startTimer() {
        // clearTimeout(tmhandler);
        // countdown('countdown', 10);
    }
</script>

</body>
</html>