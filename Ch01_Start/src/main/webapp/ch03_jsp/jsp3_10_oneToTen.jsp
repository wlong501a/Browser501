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
int sum = 0;
	for(int i=0; i<=10; i++){
		sum += i;
	}
	System.out.println("consol: " + sum);
%>
<hr>
<%
int sum2 = 0;
	for(int i=0; i<=10; i++){
		sum2 += i;
	}
	out.println("web output: " + sum2);
%>
<hr>
<%
int sum3 = 0;
	for(int i=0; i<=10; i++){
		sum3 += i;
	}
%>
web output2: <%=sum3 %>
<hr>
1부터 10까지의 합은 <%out.println(sum);%>입니다
</body>
</html>