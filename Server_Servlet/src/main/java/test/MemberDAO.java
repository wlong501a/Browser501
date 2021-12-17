
package test;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userid = "jsp";
	String passwd = "jsp";

	public MemberDAO() {

		try {
			Class.forName(driver);

		} catch (ClassNotFoundException e) {

		}

	}

	public ArrayList<Member> select() {

		ArrayList<Member> list = new ArrayList<Member>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "select * from member2";
			con = DriverManager.getConnection(url, userid, passwd);
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String password = rs.getString("password");
				String name = rs.getString("name");
				String address = rs.getString("address");
				String tel = rs.getString("tel");
				Date reg_date = rs.getDate("reg_date");

				Member dto = new Member();
				dto.setId(id);
				dto.setPassword(password);
				dto.setName(name);
				dto.setAddress(address);
				dto.setTel(tel);
				dto.setReg_date(reg_date);
				
				list.add(dto);

			}
		} catch (SQLException e) {

		} finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {

			}
		}

		return list;

	}
}
