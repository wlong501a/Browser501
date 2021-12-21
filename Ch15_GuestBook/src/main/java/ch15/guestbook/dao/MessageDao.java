package ch15.guestbook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import ch15.guestbook.model.Message;
import ch15.jdbc.JdbcUtil;

//p450
public class MessageDao {
	
	//싱글톤
	private static MessageDao messageDao = new MessageDao();
	public static MessageDao getInstance() {
		return messageDao;
	}
	private MessageDao() {
		
	}//
	
	public int insert(Connection conn, Message message) throws SQLException {
		PreparedStatement pstmt = null;
		
		try {
			String sql = "insert into guestbook_message values(message_id_seq.nextval,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, message.getGuestName());
			pstmt.setString(2, message.getPassword());
			pstmt.setString(3, message.getMessage());
			return pstmt.executeUpdate();
		}finally {
			JdbcUtil.close(pstmt);
		}
		
	}
	
	public Message select(Connection conn, int messageId) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from guestbook_message where message_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, messageId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return makeMessageFromResultSet(rs);	//DB의 내용이 담긴 메세지 객체 리턴
			}else {
				return null;
			}
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	//DB에 있는 내용을 가져와서 메세지객체에 담아서 내보냄 , select() selectList()에서 사용
	private Message makeMessageFromResultSet(ResultSet rs) throws SQLException {
		Message message = new Message();
		message.setId(rs.getInt(1));
		message.setGuestName(rs.getString(2));
		message.setPassword(rs.getString(3));
		message.setMessage(rs.getString(4));
		return message;
	}
	//guestbood_message테이블의 전체 행 갯수
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			String sql = "select count(*) from guestbook_message";
			rs = stmt.executeQuery(sql);
			rs.next();
			return rs.getInt(1);	//행의 갯수
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}
	//한 페이지의 메시지
	public List<Message> selectList(Connection conn, int firstRow, int endRow) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select message_id, guest_name, password, message from ( "
					+ " select rownum rnum, message_id, guest_name, password, message from ( "
					+ " select * from guestbook_message m order by m.message_id desc "
					+ "    ) where rownum <= ? "
					+ ") where rnum >= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, firstRow);	//읽어올 첫번째 행 번호
			rs = pstmt.executeQuery();
			if (rs.next()) {
				List<Message> messageList = new ArrayList<Message>();
				do {
					messageList.add(makeMessageFromResultSet(rs));
				} while (rs.next());
				return messageList;
			} else {
				return Collections.emptyList(); //	←??
			} 
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	public int delete(Connection conn, int messageId) throws SQLException {
		PreparedStatement pstmt = null;
		
		try {
			String sql = "delete from guestbook_message where message_id =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, messageId);
			return pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
	}

}
