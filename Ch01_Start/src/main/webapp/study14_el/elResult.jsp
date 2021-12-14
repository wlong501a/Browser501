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
</head>
<body>
<%
	
%>
초기화 Parameter Name : ${initParam.Name} <br>
초기화 Parameter AGE : ${initParam.AGE}<hr>

요청URI : ${pageContext.request.requestURI}<hr>

아이디 : ${param.id}<br>
선택한 운동 : ${param.sport }<br>

</body>
</html>