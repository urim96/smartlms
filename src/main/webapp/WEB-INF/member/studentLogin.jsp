<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<%
   response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
   response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
   response.setDateHeader("Expires", 0); // Proxies.
%>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css">
<script src="${pageContext.request.contextPath }/resources/js/findIdPwd.js"></script>

<body>
<div class="container">
        <div class="top">
            <h3 class="title">로그인</h3>
        </div>
        <%
            if (request.getSession().getAttribute("userError") == "로그인에러") {
            session.invalidate();
            out.println("<div class='alert alert-danger'>");
            out.println("아이디와 비밀번호를 확인해 주세요");
            out.println("</div>");
            }
            if (request.getSession().getAttribute("userError") == "탈퇴회원") {
            session.invalidate();
            out.println("<div class='alert alert-danger'>");
            out.println("이미 탈퇴한 회원입니다");
            out.println("</div>");
            }
        %>
        
        <form action="/student" method="POST">
            <div class="content">
                <div class="form-group">
                    <label for="id" class="login-tit">아이디&#42;</label>
                    <input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력해주세요." required>
                </div>
                <div class="form-group">
                    <label for="pwd" class="login-tit">비밀번호&#42;</label>
                    <input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호를 입력해 주세요." required>
                </div>
                <button type="submit" id="btn">로그인</button>
                <small class="join-btn">
                    <span class="divider"></span>
                    <button type="button" class="btn pwdsearch" id="pwdclick"
                                 data-toggle="modal" data-target="#pwdsearch" value="">아이디 찾기 | 비밀번호 찾기</button>
                </small>
            </div>
        </form>

		<div class="modal" id="pwdsearch" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop='static' aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel" style="margin:0 auto;">아이디 비밀번호 찾기</h4>
                </div>
                <div class="modal-body">
                    <div id="selection">
                        <button class="btnfI" id="findIdBtn">아이디 찾기</button>
                        <button class="btnfI" id="findPwdBtn">비밀번호 찾기</button>
                    </div>
                    <div id="formArea">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn" data-dismiss="modal">취소</button>
                </div>
            </div>
        </div>
    </div>
</div>



</body>

</html>