<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jsp::include(p167)</title>
</head>
<body>
<img src="jsp_include.jpg"><br>
<%
	request.setAttribute("name1", "park");

%>


include전 name parameter값: <%=request.getParameter("name") %><hr>

<%-- request.setAttribute(); 와 <jsp:param value="hong" name="name"/> 의 값을 넘김.
↓이것을 주석처리 할 경우 request.setAttribute("name1", "park"); 도 넘어가지 않음. --%>
<jsp:include page="body_sub.jsp">
	<jsp:param value="hong" name="name"/>
</jsp:include>
<hr>
include후 name parameter값: <%=request.getParameter("name") %><hr>
</body>
</html>