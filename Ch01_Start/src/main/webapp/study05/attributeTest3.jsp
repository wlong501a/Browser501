<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		border: 1px solid black;
		margin: 5px;
		padding: 5px;
	}
	td {
		border: 1px solid black;
	}

</style>
</head>
<body>
<h3>영역과 속성테스트</h3>
	<table>
		<tr>
			<td colspan="2">Application 영역에 저장된 내용들</td>
		</tr>
		<tr>
			<td><label>이름</label></td>
			<td><%=application.getAttribute("name")%></td>
		</tr>
		<tr>
			<td><label>아이디</label></td>
			<td>${applicationScope.id}</td>
		</tr>

	</table>
	<br>
	<table>
		<tr>
			<td colspan="2">Session 영역에 저장된 내용들</td>
		</tr>
<%-- 		<tr><td>address</td><td><%=session.getAttribute("addr") %></td></tr> --%>
<%-- 		<tr><td>tel</td><td>${sessionScope.tel}</td></tr> --%>
<%-- 		<tr><td>email</td><td>${sessionScope.email}</td></tr> --%>
		
		<%
		Enumeration<String> e = session.getAttributeNames();
		while(e.hasMoreElements()){
			String names = e.nextElement();
			String values = (String)session.getAttribute(names);
			/* out.println("<tr><td>"+names+"</td><td>"+values+"</td></tr>");}	//이렇게도 표현가능 */ 
		%>
		<tr>
			<td><%=names %></td>
			<td><%=values %></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>