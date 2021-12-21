<%@page import="ch15.guestbook.model.Message"%>
<%@page import="ch15.guestbook.service.WriteMessageService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="message" class="ch15.guestbook.model.Message">
	<jsp:setProperty property="*" name="message"/>
</jsp:useBean>

<%
	WriteMessageService writeService = WriteMessageService.getInstance();	//객체생성
	writeService.write(message);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>p465 방명록 메시지 남김</title>
</head>
<body>
방명록에 메시지를 남겼습니다.
<br/>
<a href="list.jsp">[목록 보기]</a>
</body>
</html>