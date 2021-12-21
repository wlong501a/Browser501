<%@page import="java.sql.Connection"%>
<%@page import="test.MemberDAO"%>
<%@page import="test.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" class="test.Member"/>
<jsp:setProperty property="*" name="member"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MemberDAO dao = new MemberDAO();
	Connection con = dao.getConnection();
	int count = dao.insert(con,member.getId(),member.getPassword(),member.getName());
	
	if(count>0){
		out.print("<script>"); 
        out.print("alert('입력완료');"); 
        out.print("</srcipt>");
		response.sendRedirect("main.jsp");
	}else{
		out.println("<script>alert('입력에 실패 하였습니다.');</script>");
		response.sendRedirect("joinform.jsp");
	}
%>
</body>
</html>