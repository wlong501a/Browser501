<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어</title>
</head>
<body>
(1) Array<br>
${w[0]}<br>
${w[1]}<br>
${w[2]}<br>

<%
//1). Array 출력
//getAttribute 반복문사용
	String str[] = (String[])request.getAttribute("w");
	for(String s : str){
	out.println(s+" ");
	}
	
	String str2[] = (String[])request.getAttribute("w");
	for(int i = 0; i<str2.length; i++){
		out.println(str[i]+" ");
	}
%>
<hr>
*Array :: JSTL<br>

<c:forEach var="i" items="${w }">
	${i }<br>
</c:forEach>

<hr>
(2) ArrayList<br>
${FRUITS[0]}<br>
${FRUITS[1]}<br>
${FRUITS[2]}<br>
<%
//2). ArrayList 출력
	List<String> fruits = (List<String>) request.getAttribute("FRUITS");
	for(int i = 0; i<fruits.size(); i++){
		out.println(fruits.get(i)+" ");
	}

	/* out.println(request.getAttribute("FRUITS"));
	out.println("<hr>"); */
%>
<hr>

*ArrayList :: JSTL<br>

<c:forEach var="i" items="${FRUITS }">
	${i }<br>
</c:forEach>

<hr>
(3) HashMap<br>
${NAME["hong1"]}<br>
${NAME["hong2"]}<br>
${NAME["hong3"]}<br>
${NAME.hong1}<br>
${NAME.hong2}<br>
${NAME.hong3}<br>

<%
//3). Map 출력
	Map<String,String> m = (Map<String,String>) request.getAttribute("NAME");
	for(String key : m.keySet()){
		out.println(m.get(key));
	}
%>
<hr>

*HashMap :: JSTL<br>

<c:forEach var="i" items="${NAME}">
	${i }<br>
</c:forEach>

<c:forEach var="entry" items="${NAME}">
	${entry.key } :: ${entry.value }<br>
</c:forEach>

<hr>
(4) Member Class<br>
${member.id }<br>
${member.name }<hr>
 
</body>
</html>