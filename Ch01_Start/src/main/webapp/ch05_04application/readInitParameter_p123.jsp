<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초기화 파라미터 읽어오기</title>
</head>
<body>
초기화 파라미터 목록::<br>
<hr>
::[getInitParameter()]::<br>
<%
	String logEnabled = application.getInitParameter("logEnabled");
	String debugLevel = application.getInitParameter("debugLevel");

	out.println("<li>logEnabled : "+logEnabled+"</li>");
	out.println("<li>debugLevel : "+debugLevel+"</li>");
%>


<hr>
::[getInitParameterNames()]::<br>
<ul>
<%
	Enumeration<String> initparam = application.getInitParameterNames();
	while(initparam.hasMoreElements()){
		String name = initparam.nextElement();
		String value = application.getInitParameter(name);
		out.println("<li>"+name+" : "+value+"</li>");
	}

%>
</ul>
</body>
</html>