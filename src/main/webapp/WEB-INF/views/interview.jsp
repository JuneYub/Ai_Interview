<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<script type="text/javascript" src="../../../resources/static/js/interView/timer.js"></script>
<script type="text/javascript" src="../../../resources/static/js/interView/camVideo.js?v=<%=System.currentTimeMillis() %>"></script>
<script type="text/javascript" src="../../../resources/static/js/interView/speechRecog.js?v=<%=System.currentTimeMillis() %>"></script>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>타이머</title>
    <h1>면접 화면</h1>
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
<div>
    <video width="500" height="500" autoplay="autoplay" id="myVideo"></video>
    <script>load('myVideo')</script>
</div>

<div class="countdown">00</div>
<script>countdown('countdown', 30)</script>
<hr/>
<input type="button" onclick="startTimer();" value="답변 제출"/>
<input type="button" onclick="startrecog();" value="음성인식 시작"/>
<input type="button" onclick="endRecog();" value="음성인식 종료"/>

</body>
</html>