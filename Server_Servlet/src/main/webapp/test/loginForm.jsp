<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, td{
	border: 1px solid red;
	text-align: center;
}
</style>
</head>
<body>
<form action="join.do" method="post">
	<table>
		<tr>
			<td colspan="2">로그인</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id"  required autofocus></td>
			
		</tr>
		<tr>
			<td>암호</td>
			<td><input type="password" name="pw" required></td>
			
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="확인"></td>
		</tr>
	</table>

</form>
</body>
</html>