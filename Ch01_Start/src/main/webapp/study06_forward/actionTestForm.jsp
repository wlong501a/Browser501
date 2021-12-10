<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form action="actionTest.jsp">
		아이디:<input type="text" name="id" required="required"><br>
		암&nbsp;호:<input type="password" name="pw" required="required"><br>
		<input type="radio" name="check" value="user" checked="checked">사용자
		<input type="radio" name="check" value="manamger">관리자<br>
		<input type="submit" value="로그인">
	</form>

</body>
</html>