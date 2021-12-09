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
	<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");

	application.setAttribute("name", name);
	application.setAttribute("id", id);
	%>
<h3>영역과 속성테스트</h3>	
	
	<%=name%>님 반갑습니다
	<br> ${param.name }님의 아이디는
	${param.id}입니다.

	<form action="attributeTest2.jsp" method="post">
		<table>
			<tr>
				<td colspan="2">Session 영역에 저장할 내용들</td>
			</tr>
			<tr>
				<td>email 주소</td>
				<td><input type="text" name="email" id="email"></td>
			</tr>
			<tr>
				<td>집주소</td>
				<td><input type="text" name="addr" id="addr"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="tel" name="tel" id="tel"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>
</body>
</html>