<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <% request.setCharacterEncoding("utf-8"); %>
  
 <%
 String subject = request.getParameter("subject");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request 내장객체 예제 결과</title>
<style>
table, td {
	border: 1px solid black;
	width: 300px;
}
</style>
</head>
<body>
<h1>학생정보</h1>

<table>

<tr>
<td>학번</td>
<td><%=request.getParameter("class_id") %></td>
</tr>

<tr>
<td>이름</td>
<td>${param.name}</td>
</tr>

<tr>
<td>학년</td>
<td><%=request.getParameter("grade") %></td>
</tr>

<tr>
<td>선택과목</td>
<td><%out.println(subject);%></td>
</tr>

</table>
</body>
</html>