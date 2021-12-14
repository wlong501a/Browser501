<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="study14.LoginBean"></jsp:useBean>
<jsp:setProperty property="userid" name="login" value=""/>
<jsp:setProperty property="passwd" name="login"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>ID & PW를 EL형태로 입력 받기</h3>
사용자 아이디 : ${login.userid }<br>
사용자 비밀번호 : ${login.passwd }<br>

</body>
</html>