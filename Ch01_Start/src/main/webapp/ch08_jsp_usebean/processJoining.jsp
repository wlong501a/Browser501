<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="memberInfo" class="member.MemberInfo"></jsp:useBean>

<jsp:setProperty property="*" name="memberInfo"/>
<jsp:setProperty property="password" name="memberInfo" value="<%=memberInfo.getId() %>"/>

<jsp:getProperty property="name" name="memberInfo"/><br>
<jsp:getProperty property="email" name="memberInfo"/><br>
</body>
</html>