<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
String[] sports = request.getParameterValues("exercise");
String gender = request.getParameter("gender");

for(String s : sports) {
	out.println("좋아하는 운동mvc2 : "+s+"<br>");
}
out.println("성별mvc2 : "+gender);
%>
<hr>
<%
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
Enumeration<String> sports2 = session.getAttributeNames();
String gender2 = (String)session.getAttribute("g");	//session.getAttribute("g");의 결과값은 object임으로 String객체로 강제형변환

while(sports2.hasMoreElements()) {
	String sessionName = sports2.nextElement().toString();	
	String sessionValue= (String)session.getAttribute(sessionName).toString();
	out.println("Name : "+sessionName+"<br>");
	out.println("Value : "+sessionValue+"<br>");
}

out.println("성별mvc2 : "+gender2);
%>
<hr>
id(JSP): <%=request.getParameter("id") %><br>
id(EL): ${param.id}


</body>
</html>