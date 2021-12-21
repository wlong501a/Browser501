package ch15.jdbc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//p434
public class JdbcUtil {
	
//메소드 오버로딩
	public static void close(ResultSet rs) {
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				
			}
		}
	}
	
	public static void close(Statement stmt) {
		if(stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				
			}
		}
	}
	
	public static void close(Connection conn) {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				
			}
		}
	}
	
	public static void rollback(Connection conn) {
		if(conn != null) {
			try {
				conn.rollback();
			} catch (SQLException e) {
				
			}
		}
	}
	
}
