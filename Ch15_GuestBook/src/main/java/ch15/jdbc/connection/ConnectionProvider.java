package ch15.jdbc.connection;
//p442

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {

	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection("jdbc:apache:commons:dbcp:guestbook");
		
	}
	
	
	
	
}
