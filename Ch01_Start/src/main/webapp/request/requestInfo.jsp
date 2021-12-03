<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
클라이언트IP:		<br>
요청정보 길이:		<br>
요청정보 전송방식: <%=request.getMethod() %>	<hr>

요청 URI: <%=request.getRequestURI() %><br>
전체경로(URL): <%=request.getRequestURL() %><br>
컨텍스트 경로: <%=request.getContextPath() %><hr>

서버이름: <%=request.getServerName() %><br>
</body>
</html>