<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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

	String id = request.getParameter("id");
	String pw1 = request.getParameter("pw1");
	String name = request.getParameter("name");
	
	try{
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, "jsp", "jsp");
		Statement stmt = con.createStatement();
		String sql = "insert into join values('"+id+"',"+pw1+","+name+")";
		stmt.executeUpdate(sql);
		con.close();
		stmt.close();
	}catch(Exception e){
		System.out.println(e.getMessage());
	}
%>

</body>
</html>