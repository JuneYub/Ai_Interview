<%-- 중간에 %들어간건 java코드입니다
    태그 예제
    <%! %> 선언
    <% %> 자바코드 실행부분
 --%>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
    ArrayList<String> Q = new ArrayList<>();
    Q.add((String) request.getAttribute("question1"));
    Q.add((String) request.getAttribute("question2"));
    Q.add((String) request.getAttribute("question3"));
    ArrayList<String> A = new ArrayList<>();
    A.add((String) request.getAttribute("answer1"));
    A.add((String) request.getAttribute("answer2"));
    A.add((String) request.getAttribute("answer3"));
%>
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

        addElementForPost("question1", "${question1}");
        addElementForPost("question2", "${question2}");
        addElementForPost("question3", "${question3}");
        addElementForPost("answer1","${answer1}");
        addElementForPost("answer2","${answer2}");
        addElementForPost("answer3","${answer3}");
        addElementForPost("firstJob", "${Job1}")
        addElementForPost("secondJob", "${Job2}")
        addElementForPost("introFirst", "${intro1}")
        addElementForPost("introSecond", "${intro2}")
        addElementForPost("studentId", document.getElementById('studentId').value)

        document.body.appendChild(form);
        form.submit();
    }
</script>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>IntelliHong</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="../../../resources/static/assets/favicon.ico"/>
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../../../resources/static/css/styles.css" rel="stylesheet"/>
    <%--        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">--%>

    <!-- Custom Introduction JavaScript -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="../../../resources/static/js/introduction.js"></script>

    <style>
        .list-margin {
            margin-bottom: 3rem;
            padding: 1.5rem;
        }
    </style>

</head>

<body id="page-top">
<%--    <script>console.log("${pageContext.request.contextPath}")</script>--%>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand" href="#page-top"><img src="../../../resources/static/assets/img/our_logo.svg"
                                                      alt="..."/></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars ms-1"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                <li class="nav-item"><a class="nav-link" href="#services">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#portfolio">소개</a></li>
                <li class="nav-item"><a class="nav-link" href="#about">결과보기</a></li>
                <li class="nav-item"><a class="nav-link" href="#team">문의하기</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- Masthead-->
<header class="masthead-custom">
    <div class="container">
        <div class="masthead-subheading">합격으로 가는 가장 빠른 길</div>
        <div class="masthead-heading text-uppercase">AI를 활용한 실전 면접</div>
    </div>
</header>
<!-- Contact-->
<section class="page-section" id="contact">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">결과</h2>
            <h3 class="section-subheading text-muted">표정 분석 결과와 질문 내용 및 답변</h3>
        </div>
        <div class="mb-5">
            <span class="m-3">이름: </span>
            <span class="m-3">학번: </span>
            <span class="m-3">과: </span>
        </div>
        <div>
            <h3 class="'section-heading m-3">질문 & 답변 리스트</h3>
        </div>
        <div>
            <ul class="list-group">
                <li class="list-group-item list-margin">
                    <div class="row">
                        <div class="col-10">
                            <h4 class="m-b-0 font-medium p-0">1차 직무: ${Job1}, 2차 직무: ${Job2}</h4>
                        </div>
                        <div class="col-2">
                            <div class="ml-auto">
                                <h5 class="text-muted m-b-0">직무 선택 정보</h5>
                            </div>
                        </div>
                    </div>
                </li>

                <li class="list-group-item list-margin">
                    <div class="row">
                        <div class="col-10">
                            <h4 class="m-b-0 font-medium p-0">지원 동기</h4>
                            <span style="width:100px; overflow: hidden; word-break:break-all;">${intro1}</span>
                            <br>
                            <h4 class="m-b-0 font-medium p-0">직무와 관련된 경험 및 활동</h4>
                            <span style="width:100px; overflow: hidden; word-break:break-all;">${intro2}</span>
                        </div>
                        <div class="col-2">
                            <div class="ml-auto">
                                <h5 class="text-muted m-b-0">자기소개</h5>
                            </div>
                        </div>
                    </div>
                </li>

                <% for (int i = 0; i < 3; i++) { %>
                <li class="list-group-item list-margin">
                    <div class="row">
                        <div class="col-10">
                            <h4 class="m-b-0 font-medium p-0"><%=Q.get(i)%></h4>
                            <span><%=A.get(i)%></span>
                        </div>
                        <div class="col-2">
                            <div class="ml-auto">
                                <h5 class="text-muted m-b-0">답변 관련 정보</h5>
                            </div>
                        </div>
                    </div>
                </li>
                <% } %>
            </ul>
        </div>
    </div>
    <div class="form-group form-group-textarea mb-md-0">
        <!-- Message input-->
        <textarea class="form-control" id="studentId" name="studentId" placeholder="학번을 입력해주세요" style="resize: none" maxlength="10" required></textarea>
        <div class="text-end"><button href="javascript:;" class="btn btn-primary btn-xl text-uppercase" id="submitButton" type="submit", onclick="post('http://localhost:9090/save','post')">저장하기</button></div>
    </div>

</section>
<!-- Footer-->
<footer class="footer py-4">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-4 text-lg-start">Copyright &copy; Your Website 2022</div>
            <div class="col-lg-4 my-3 my-lg-0">
                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter"><i
                        class="fab fa-twitter"></i></a>
                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook"><i
                        class="fab fa-facebook-f"></i></a>
                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="LinkedIn"><i
                        class="fab fa-linkedin-in"></i></a>
            </div>
            <div class="col-lg-4 text-lg-end">
                <a class="link-dark text-decoration-none me-3" href="#!">Privacy Policy</a>
                <a class="link-dark text-decoration-none" href="#!">Terms of Use</a>
            </div>
        </div>
    </div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<%--        <script src="js/scripts.js"></script>--%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/scripts.js"></script>
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<!-- * *                               SB Forms JS                               * *-->
<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

<script src="../../../resources/static/js/introduction.js"></script>
</body>
</html>
