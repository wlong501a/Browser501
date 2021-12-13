<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	request.setAttribute("req", "5678");
	session.setAttribute("ID", request.getParameter("id"));
	session.setAttribute("PW", request.getParameter("pw"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Login</title>
</head>
<body>
<h3>로그인되었습니다.</h3>
<h3>로그인 아이디: ${sessionScope.ID}</h3>
<a href="sessionLogout.jsp?id2=abcd&pw2=1234">로그아웃</a>
</body>
</html>