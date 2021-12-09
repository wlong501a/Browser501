<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>from.jsp의 제목(p179)</title>
</head>
<body>
<img src="jsp_forward.jpg"><br>

이 페이지는 from.jsp가 생성한 것입니다1<br>
<%
	request.setAttribute("number", "1234");

	session.setAttribute("number2", "5678");
%>

<jsp:forward page="to.jsp?name=hong">
	<jsp:param value="abcd" name="id"/>
</jsp:forward>


이 페이지는 from.jsp가 생성한 것입니다2<br>



</body>
</html>