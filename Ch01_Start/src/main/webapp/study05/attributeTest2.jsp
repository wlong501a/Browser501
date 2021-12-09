<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%
	String email = request.getParameter("email");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");

	session.setAttribute("email", email);
	session.setAttribute("addr", addr);
	session.setAttribute("tel", tel);
	
	String name = (String)application.getAttribute("name");
	%>
	<h3>영역과 속성테스트</h3>
	<%=name %>님의 정보가 모두 저장되었습니다.
	<a href="attributeTest3.jsp">확인하러가기</a>
</body>
</html>