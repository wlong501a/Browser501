<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>JSTL Core라이브러리 실습1(배열저장:1~10)</h3>
	<%
		int[] num = new int[10];
		for (int i = 1; i <= 10; i++) {
		num[i - 1] = i;
		}
		request.setAttribute("num", num);
	%>
	<c:forEach var="i" items="${num }">
		<c:out value="${i}"></c:out>
	</c:forEach>
	
	<br>
	
	<c:forEach var="i" items="${num }" begin="0" end="6">	<!-- 인덱스0 부터 인덱스6까지 -->
		<c:out value="${i}"></c:out>
	</c:forEach>
	
	<br>
	
	<c:forEach var="i" items="${num }">
		<c:if test="${i<=7 }">
			<c:out value="${i}"></c:out>
		</c:if>
	</c:forEach>
	
	<hr>

<h3>JSTL Core라이브러리 실습2(ArrayList:홍길동,이순신,유관순)</h3>
	<%
		ArrayList<String> al = new ArrayList<String>();
		al.add("홍길동");
		al.add("이순신");
		al.add("유관순");

		request.setAttribute("name", al);
	%>
	<c:forEach var="i" items="${name }">
		<c:out value="${i }"></c:out>
	</c:forEach>

	<hr>
	
<h3>JSTL Core라이브러리 실습3(String A,B,C,D)</h3>
	<%
		String str = "A,B,C,D";
		request.setAttribute("data", str);
	%>
	<c:forTokens var="i" items="${data }" delims=",">
		<c:out value="${i }"></c:out>
	</c:forTokens>
	
</body>
</html>