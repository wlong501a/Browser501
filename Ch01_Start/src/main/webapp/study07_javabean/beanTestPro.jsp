<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="bean" class="study07.TestBean"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈을 사용하는 JSP</title>
</head>
<body>
<h2>자바빈을 사용하는 JSP페이지</h2>

<jsp:setProperty property="name" name="bean"/>

입력된 이름은 <jsp:getProperty property="name" name="bean"/> 입니다.
</body>
</html>