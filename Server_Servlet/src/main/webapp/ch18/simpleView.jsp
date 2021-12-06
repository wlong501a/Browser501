<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
URL:: http://localhost:8080/Server_Servlet/simple<br>
type: date한 경우 =>날짜 출력<hr>

결과(JSP-attribute)::<%=request.getAttribute("result")%><br>
결과(EL-attribute):: ${result}<hr>

결과(JSP-parameter)::<%=request.getParameter("type") %><br>
결과(EL-parameter)::${param.type } <br>
</body>
</html>