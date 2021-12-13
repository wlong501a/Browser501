<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 삭제</title>
</head>
<body>
<%
//새로 브라우저가 생성되면 기존세선X
//현재 세션이 존재하면 기존 세션 리턴, 없으면 null값 리턴
	session = request.getSession(false);
	if(session != null){
		session.invalidate();
		response.sendRedirect("index.jsp");
	}

%>
</body>
</html>