<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		background-color: pink;
	}

</style>
</head>
<body>
<h3>사용자로 로그인 성공</h3>
<%=URLDecoder.decode(request.getParameter("userName"),"UTF-8") %><br>
 (${sessionScope.id })님 환영합니다.
</body>
</html>