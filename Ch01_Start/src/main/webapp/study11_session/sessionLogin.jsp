<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Login</title>
<style>
	table, td {
		background-color: yellow;
		text-align: center;
	}
</style>
</head>
<body>
	<form action="sessionLogin2.jsp" method="post">
		<table>
			<tr>
				<td>아이디:</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호:</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="로그인">
				<input type="reset" value="다시 작성"></td>
			</tr>
		</table>
	</form>
</body>
</html>