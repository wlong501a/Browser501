<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");

	application.setAttribute("name", name);
	application.setAttribute("id", id);
	%>

	<form action="attributeTest1.jsp" method="post">
		<table>
			<tr>
				<td colspan="2">Application 영역에 저장할 내용들</td>
			</tr>
			<tr>
				<td><label>이름</label></td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td><label>아이디</label></td>
				<td><input type="text" name="id" id="id"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>
</body>
</html>