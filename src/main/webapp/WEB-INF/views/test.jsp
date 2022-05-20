
<%-- 중간에 %들어간건 java코드입니다
    태그 예제
    <%! %> 선언
    <% %> 자바코드 실행부분
 --%>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Spring Boot Application</title></head>
<body>
<%!
    boolean show1 = false;
    boolean show2 = true;
%>
<h1>Test</h1>

<% if(show1) {%>
<p>show1 is true</p>
<% }if(show2){ %>
<p>show2 is true</p>
<% } %>

<p>${testTag}</p>
</body>
</html>
