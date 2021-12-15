<%@page import="ch11_el.Member"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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
//1. Array
	String winner[] = new String[3];
	winner[0] = "홍길동1";
	winner[1] = "홍길동2";
	winner[2] = "홍길동3";

	request.setAttribute("w", winner);
	
//2. ArrayList
//	딸기, 오렌지, 복숭아
	ArrayList<String> list = new ArrayList<String>();
	list.add("딸기");
	list.add("오렌지");
	list.add("복숭아");

	request.setAttribute("FRUITS", list);

//3. Map
//hong1 = a1, hong2 = a2, hong3 = a3
	HashMap<String,String> map = new HashMap<String,String>();
	map.put("hong1", "a1");
	map.put("hong2", "a2");
	map.put("hong3", "a3");
	
	request.setAttribute("NAME", map);
	
//4. Bean
// Member 데이터 저장 id-abcd, name-hong
	Member m = new Member();
	m.setId("abcd");
	m.setName("hong");
	
	request.setAttribute("member", m);

	
	
	RequestDispatcher d = request.getRequestDispatcher("collectionResult.jsp");
	d.forward(request, response);
%>

</body>
</html>