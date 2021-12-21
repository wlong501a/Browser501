<%@page import="ch15.guestbook.model.Message"%>
<%@page import="ch15.guestbook.service.MessageListView"%>
<%@page import="ch15.guestbook.service.GetMessageListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	//날아오는 page가 없으면 pageNumber를 1로 설정
	String pageNumberStr = request.getParameter("page");	//날아오는 값
	int pageNumber = 1;
	
	//날아오는 page가 있으면 pageNumber를 해당 페이지로 지정
	if(pageNumberStr != null){
		pageNumber = Integer.parseInt(pageNumberStr);
	}
	//해당 페이지의 한 페이지에 보여지는 리스트 불러오기
	GetMessageListService messageListService = GetMessageListService.getInstance();
	MessageListView viewData = messageListService.getMessageList(pageNumber);
	
%>

<c:set var="viewData" value="<%=viewData %>"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>p462 방명록 메시지 목록</title>
</head>
<body>

<form action="writeMessage.jsp" method="post">
이름:<input type="text" name="guestName"><br>
암호:<input type="password" name="password"><br>
메시지:<textarea name="message" rows="3" cols="30"></textarea><br>
<input type="submit" value="메시지 남기기"/><br>
</form>

<hr>

<!-- 만약 해당페이지에 보여지는 메시지가 없을 경우(공란인 경우) -->
<c:if test="${viewData.isEmpty()}">
등록된 메시지가 없습니다.
</c:if>

<c:if test="${!viewData.isEmpty()}">
<table border="1">

	<c:forEach var="message" items="${viewData.messageList }"> <!-- viewData.messageList내용을 반복함 -->
		<tr>
			<td>
				메시지 번호: ${message.id}<br/>
				손님 이름 : ${message.guestName}<br/>
				메시지 : ${message.message}<br/>
				<a href="confirmDeletion.jsp?messageId=${message.id}">[삭제하기]</a>
			</td>
		</tr>
	</c:forEach>
	
</table>

<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount}">	<!-- 페이지 1번부터 시작해서 총 페이지수까지([1][2][3]..) 표현하기 위해 반복함 -->
<a href="list.jsp?page=${pageNum}">[${pageNum}]</a>
</c:forEach>

</c:if>
</body>
</html>