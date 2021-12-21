<%@page import="ch15.guestbook.service.InvalidPasswordException"%>
<%@page import="ch15.guestbook.service.DeleteMessageService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//confirmDeletion.jsp의 숨은 messageId의 값
	int messageId = Integer.parseInt(request.getParameter("messageId"));
	
	String password = request.getParameter("password");
	boolean invalidPassword = false;
	
	try{
		DeleteMessageService deleteService = DeleteMessageService.getinstance();	//객체생성
		
		deleteService.deleteMessage(messageId, password);	//**
		
	}catch(InvalidPasswordException ex){
		invalidPassword = true;	
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>p467 방명록 메시지 삭제함</title>
</head>
<body>
<% 
//invalidPassword=>false 정상삭제.
	if(!invalidPassword) {
		out.println("메시지를 삭제하였습니다.");
	}else {
		out.println("입력한 암호가 올바르지 않습니다. 암호를 확인해주세요.");
	}
%>
<br/>
<a href="list.jsp">[목록 보기]</a>


</body>
</html>