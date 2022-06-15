<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<script type="text/javascript" src="../../../resources/static/js/interView/answer.js?v=<%=System.currentTimeMillis() %>"></script>
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
    <link rel="icon" type="image/x-icon" href="../../../resources/static/assets/favicon.ico"/>
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
    <div id="question">${secondJob} 직무에 지원한 이유가 무엇입니까?</div>
    <div class="countdown"> 00</div>
    <hr/>
    <div id="editor" contenteditable="true"></div>
    <input id="BtSubmit" type="button" onclick="submitAnswer()" value="답변 제출"/>
</div>
    <script>
        var questions = [];
        var answers = [];

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
        const form = document.createElement('form');
        function addElementForPost(name, value) {
            let hiddenField = document.createElement('input');
            hiddenField.type = 'hidden';
            hiddenField.name = name;
            hiddenField.value = value;
            form.appendChild(hiddenField);
        }

        function post(path, method = 'post') {
            // The rest of this code assumes you are not using a library.
            // It can be made less verbose if you use one.
            // const form = document.createElement('form');
            form.method = method;
            form.action = path;

            for (let i = 0; i < 3; i++) {
                addElementForPost("question" + (i + 1).toString(), questions[i]);
                addElementForPost("answer" + (i + 1).toString(), answers[i]);
            }
            addElementForPost("firstJob", "${firstJob}")
            addElementForPost("secondJob", "${secondJob}")
            addElementForPost("introFirst", "${introFirst}")
            addElementForPost("introSecond", "${introSecond}")

            document.body.appendChild(form);
            form.submit();
        }
    </script>

    <script>
        var list = [
            "Activity의 생명 주기에 대해 설명해 주세요.",
            "비동기 처리를 위해 Rxjava를 사용한 이유가 무었입니까?",
            "",
            "",
            ""
        ];

        // 질문 생성
        function randIndex() {
            var r = Math.random() * 10;
            r = parseInt(r) % list.length;
            return r;
        }
    </script>

    <script>
        let idx = 0
        function submitAnswer() {
            let q = document.getElementById('question').innerText;
            let modified = document.getElementById('editor').innerText;
            questions.push(q)
            answers.push(modified)
            count -= 1
            if (count <= 0) {
                // 결과 제공 페이지로!
                post('http://localhost:9090/result', 'post')
            } else {
                hideBtEdit()
                document.getElementById('editor').innerText = ""
                // 다음 질문 생성
                // var rIdx = randIndex()
                document.getElementById('question').innerText = list[idx]
                // list.slice(rIdx, 1)
                idx += 1
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
</body>
</html>