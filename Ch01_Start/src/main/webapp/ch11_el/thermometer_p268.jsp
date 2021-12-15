<%@page import="ch11_el.Thermometer_p267"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Thermometer_p267 t = new Thermometer_p267();
	request.setAttribute("th", t);
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${th.setCelsius("서울",27.3) }
<!-- setCelsius(),getCelsius() 두 종류가 있고, 값이 들어있을경우 set, get생략불가 -->
서울온도::<br>
섭씨 ${th.getCelsius("서울") }도 <br>
화씨 ${th.getFahrenheit("서울") }도<br>
정보:: ${th.info }<br>

</body>
</html>