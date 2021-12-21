<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function() {
	
	$("#btn").on("click", function() {
		if($("#password").val() != $("#password2").val()){
			alert("비밀번호 확인");
			return false;
		}
	});
});

</script>

</head>
<body>
<form action="join.jsp" method="post">
아이디<input type="text" name="id" id="id" required autofocus><br>
암호<input type="password" name="password" id="password" required><br>
암호확인<input type="password"  id="password2" required><br>
이름<input type="text" name="name" id="name" required><br>
<input type="submit" value="submit" id="btn">
</form>
</body>
</html>