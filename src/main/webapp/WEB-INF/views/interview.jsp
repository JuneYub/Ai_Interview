<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<script type="text/javascript" src="../../../resources/static/js/interView/answer.js"></script>
<script type="text/javascript"
        src="../../../resources/static/js/interView/camVideo.js?v=<%=System.currentTimeMillis() %>"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<html>
<script>
    var time = 10
    var count = 3
</script>
<head>
    <style>
        .left-box {
            /*background: red;*/
            float: left;
            width: 50%;
            height: 50%;
        }

        .right-box {
            background: wheat;
            float: right;
            width: 40%;
            height: 50%;
        }
        body {
            background-image: url("../../../resources/static/assets/img/masthead_img.png");
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" type="image/x-icon" href="../../../resources/static/assets/favicon.ico" />
    <title>면접화면</title>
    <h1>면접 화면</h1>
</head>

<body>
<input type="hidden" id="introFirst" name="introFirst" value=${introFirst}>
<input type="hidden" id="introSecond" name="introSecond" value=${introSecond}>
<input type="hidden" id="firstJob" name="firstJob" value=${firstJob}>
<input type="hidden" id="secondJob" name="introFirst" value=${secondJob}>

<div class="left-box">
    <video autoplay="autoplay" id="myVideo"></video>
</div>
<div class="right-box">
    <p>남은 시간</p>
    <div id="question">Q: 자신의 장점을 설명해 주세요</div>
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
    start('countdown', time, endFunction)
</script>

<script>
    var list = [
        "${secondJob}"+"에 지원한 이유가 무엇입니까?",
        "협업 과정에서 힘들었던 일이 있었나요?",
        "사용해본 기술 중 가장 최근에 나온 기술은 무엇입니까?"
    ];
    // 질문 생성
    function randomIndex(){
        var r = Math.random() * 10;
        r = parseInt(r)%list.length;
        return r;
    }
</script>

<script>

    var questions = [];
    var answers = [];

    function submitAnswer() {
        let q = document.getElementById('question').innerText;
        let modified = document.getElementById('editor').innerText;
        questions.push(q)
        answers.push(modified)
        count -= 1
        if(count == 0){
            // 결과 제공 페이지로!
            alert("결과 제공")
        }
        hideBtEdit()
        document.getElementById('editor').innerText = ""
        // 다음 질문 생성
        var rIdx = randIndex()
        document.getElementById('question').innerText = list[rIdx]
        list.slice(rIdx,1)
        start('countdown', time, endFunction)
        // 다음질문 받아오고
        // fetch("http://localhost:9090/requestQuestion", {
        //     method: 'POST',
        //     headers: {
        //         "Content-Type": "text/plain",
        //     },
        //     body: modified,
        // }).then((response) => {
        //     return response.text()
        // }).then((response) => {
        //     console.log(response)
        //     document.getElementById('question').innerText = response
        //     start('countdown', time, endFunction)
        // }).catch( err => console.log(err));
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

        console.log(json);

        document.body.appendChild(form);
        form.submit();
    }
</script>