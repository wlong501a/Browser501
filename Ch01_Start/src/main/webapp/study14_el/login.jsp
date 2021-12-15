<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="login" class="study14.LoginBean"/>
<jsp:setProperty property="*" name="login"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>ID & PW를 EL형태로 입력 받기</h3>

사용자 아이디 : <jsp:getProperty property="userid" name="login"/><br>
사용자 비밀번호 : <jsp:getProperty property="passwd" name="login"/><hr>

사용자 아이디(El) : ${login.userid }<br>
사용자 비밀번호(El) : ${login.passwd }<hr>

입력 파라미터를 저장하지 않고 바로 출력하기<br>
사용자 아이디(El) : ${param.userid }<br>
사용자 비밀번호(El) : ${param.passwd }<br>

</body>
</html>