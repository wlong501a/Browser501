<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>to.jsp의 실행 결과(p179)</title>
</head>
<body>

to.jsp가 생성한 것입니다.<br>
<img src="jsp_forward.jpg"><br>
JSP(id):: <%=request.getParameter("id") %><br>
EL(id) :: ${param.id}<br><hr>

JSP(number):: <%=request.getAttribute("number") %><br>
EL(number) :: ${number}<br><hr>

JSP(number):: <%=session.getAttribute("number2") %><br>
EL(number) :: ${sessionScope.number2}<br>

JSP(name):: <%=request.getParameter("name") %>

</body>
</html>