<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String num = (String)request.getAttribute("result");
	int result = Integer.parseInt(num);

	if(result == 1){
%>
	<script>
		alert("로그인 성공!");
	</script>
<%		
		response.sendRedirect("main.do");
	}
	
	if(result == 0){
%>
	<script>
		alert("암호가 다릅니다!");
	</script>
<%		
		response.sendRedirect("loginForm.jsp");
	}
	
	if(result == -1){
%>
	<script>
		alert("없는 아이디입니다.");
	</script>
<%	
		response.sendRedirect("loginForm.jsp");
	}
%>

</body>
</html>