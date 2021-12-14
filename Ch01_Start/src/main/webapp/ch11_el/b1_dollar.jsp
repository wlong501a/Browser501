<%@page import="ch11_el.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- uri="http://java.sun.com/jsp/jstl/core" 를 변수 c에 담음 --> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>p252</title>
</head>
<body>
<%
	Member m = new Member();
	m.setName("이름1");
%>
<!-- ↓ 변수m을 찾아가면 Member m = new Member();이 있음 -->
<c:set var="m" value="<%=m %>"></c:set>

<!-- ↓ 변수name을 찾아가면 m의 name이 있음(이름1) -->
<c:set var="name" value="${m.name }"></c:set>

<%
	m.setName("이름2");
%>

${name }<br>

<!-- "\"뒤에 나오는것을 화면에 그냥 표시함 -->
\${m.name}: 표현이 실행되는 시점에 곧바로 계산(Immediate Expression)
</body>
</html>