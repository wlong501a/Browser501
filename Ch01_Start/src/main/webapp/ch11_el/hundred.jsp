<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1~100까지의 합(jsp) => forward =>hundredResult.jsp =>EL 결과확인
<%
	int sum = 0;
	for(int i = 1; i<=100; i++) {
		sum += i;
		request.setAttribute("RESULT", sum);
	}
	RequestDispatcher d = request.getRequestDispatcher("hundredResult.jsp");
	d.forward(request, response);
%>
<%-- <jsp:forward page="hundredResult.jsp"></jsp:forward> --%>

</body>
</html>