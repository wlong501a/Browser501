package ch15.guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;

import ch15.guestbook.dao.MessageDao;
import ch15.guestbook.model.Message;
import ch15.jdbc.JdbcUtil;
import ch15.jdbc.connection.ConnectionProvider;

//p458
public class WriteMessageService {
	
	//싱글톤
	private static WriteMessageService instance = new WriteMessageService();
	
	public static WriteMessageService getInstance() {
		return instance;
	}
	private WriteMessageService() {
	}//
	
	//메세지 저장
	public void write(Message message) {
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();	//객체생성
			MessageDao messageDao = MessageDao.getInstance();	//객체생성
			
			messageDao.insert(conn, message);	//데이터베이스에 저장
		} catch (SQLException e) {
			throw new ServiceException("메세지 등록 실패: "+e.getMessage(), e);
		}finally {
			JdbcUtil.close(conn);
		}
	}

}
