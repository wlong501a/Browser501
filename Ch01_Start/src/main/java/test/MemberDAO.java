package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class MemberDAO {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url= "jdbc:oracle:thin:@localhost:1521:orcl";
	String userid = "jsp";
	String passwd = "jsp";
	Connection con = null;
	PreparedStatement pstmt = null;
	
	public Connection getConnection() {
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, userid, passwd);
			
		}catch (ClassNotFoundException e) {
			System.out.println("연결오류"+e.getMessage());
		}  catch (SQLException e) {
			System.out.println("연결오류"+e.getMessage());
		}
		return con;
	}
	
	public int insert(Connection con, String id, String password, String name) {
		int count = 0;
		try {
			String sql = "insert into member1 values(?,?,?,sysdate)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			count = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		return count;
	}
		

}
