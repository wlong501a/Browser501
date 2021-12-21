<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

EL(Parameter)형식::${param.id }<br>
EL(Attribute)형식::${id_attr }<br>
JSP(Parameter)형식::<%=request.getParameter("id") %><br>
JSP(Attribute)형식::<%=session.getAttribute("id_attr") %><hr>

당신이 입력한 정보입니다 (고전적인 방식)<hr>
아이디: <%=session.getAttribute("id_attr") %><br>
비밀번호: <%=request.getParameter("passwd") %><hr>

당신이 입력한 정보입니다 (EL 방식)<hr>
아이디: ${id_attr }<br>
비밀번호: ${param.passwd }<br>


</body>
</html>