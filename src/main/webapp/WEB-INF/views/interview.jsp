<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
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
<%--<div onload="load('myVideo')">--%>
<%--    <video width="100%" height="100%" autoplay="autoplay" id="myVideo"></video>--%>
<%--</div>--%>

<div class="countdown">00</div>
<script>countdown('countdown',30)</script>
<hr/>
<input type="button" onclick="startTimer();" value="답변 제출"/>

</body>
</html>
<%--<script type="text/javascript" src="js/timer.js"></script>--%>
<%--<script type="text/javascript" src="../js/camVideo.js"></script>--%>