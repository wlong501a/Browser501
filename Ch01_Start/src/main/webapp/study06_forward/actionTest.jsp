<%@page import="java.net.URLEncoder"%>
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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String check = request.getParameter("check");

	session.setAttribute("id", id);
	session.setAttribute("pw", pw);
%>
	
<% 	if(check.equals("user")){
	%><jsp:forward page="userMain.jsp">
			<jsp:param value='<%=URLEncoder.encode("고객","UTF-8") %>' name="userName"/>
		</jsp:forward>
<% 	}else if(check.equals("manamger")){
	%><jsp:forward page="managerMain.jsp">
		<jsp:param value='<%=URLEncoder.encode("관리","UTF-8") %>' name="userName"/>
	</jsp:forward>
<%	}else{
		out.println("사용자 또는 관리자 중 하나를 체크해주세요.");
	}
%>
</body>
</html>