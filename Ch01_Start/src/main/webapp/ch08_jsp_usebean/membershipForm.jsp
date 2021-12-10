<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력 폼</title>
<style>
	table, td{
		border: 1px solid black;
		
	}
	#submit{
		text-align: center;
	}
</style>
</head>
<body>
	<form action="processJoining.jsp">
		<table>
			<tr>
				<td>아이디</td>
				<td colspan="3"><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>이메일</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td colspan="4" id="submit"><input type="submit" value="회원가입" ></td>
			</tr>
		</table>
	</form>
</body>
</html>