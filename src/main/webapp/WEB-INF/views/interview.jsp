<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<script type="text/javascript" src="../../../resources/static/js/interView/answer.js"></script>
<script type="text/javascript"
        src="../../../resources/static/js/interView/camVideo.js?v=<%=System.currentTimeMillis() %>"></script>
<html>
<head>
    <style>
        .left-box {
            /*background: red;*/
            float: left;
            width: 50%;
            height: 50%;
        }

        .right-box {
            /*background: blue;*/
            float: right;
            width: 50%;
            height: 50%;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>면접화면</title>
    <h1 id="question">Q: 자신의 장점을 설명해 주세요</h1>
</head>

<body>
<div class="left-box">
    <video autoplay="autoplay" id="myVideo"></video>
</div>
<div class="right-box">
    <p>남은 시간</p>
    <div class="countdown"> 00</div>
    <hr/>
    <div id="editor" contenteditable="true"></div>
    <input id="BtSubmit" type="button" onclick="submitAnswer()" value="답변 제출"/>
</div>
</body>
</html>

<script>
    function hideBtEdit() {
        document.getElementById('BtSubmit').hidden = true
        document.getElementById('editor').hidden = true
    }

    function appearBtEdit() {
        document.getElementById('BtSubmit').hidden = false
        document.getElementById('editor').hidden = false
    }
</script>

<!-- 답변 -->
<script>
    var ans = ""
    var endFunction = (str) => {
        ans = str
        endRecog()
        console.log("=====")
        console.log(ans)
        var eidtor = document.getElementById('editor')
        eidtor.innerText = ans
        appearBtEdit()
    };
    load('myVideo')
    hideBtEdit()
    start('countdown', 30, endFunction)
</script>

<script>

    var questions = []
    var answers = []

    function submitAnswer() {
        var ans = document.getElementById('editor').innerText
        answers.push(ans)
        document.getElementById('editor').innerText = ""
        // 다음질문 받아오고
        document.getElementById('question').innerText = "다음질문"
        hideBtEdit()
        start('countdown', 30, endFunction)
    }
</script>

<script>
    function finishInterview() {
        var form = document.createElement('form');
        form.setAttribute('method', 'post');
        form.setAttribute('action', '/interview');
        document.charset = "UTF-8";

        var json = JSON.stringify(answers)
        var hiddenField = document.createElement('input');
        hiddenField.setAttribute('type', 'hidden');
        hiddenField.setAttribute('name', 'ans');
        hiddenField.setAttribute('value', json);
        form.appendChild(hiddenField);

        console.log(json)

        document.body.appendChild(form);
        form.submit();
    }
</script>