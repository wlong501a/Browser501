package ch15.guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;

import ch15.guestbook.dao.MessageDao;
import ch15.guestbook.model.Message;
import ch15.jdbc.JdbcUtil;
import ch15.jdbc.connection.ConnectionProvider;

//p460
public class DeleteMessageService {

	//싱글톤
	private static DeleteMessageService instance = new DeleteMessageService();
	
	public static DeleteMessageService getinstance() {
		return instance;
	}
	private DeleteMessageService() {
	}//
	
	
	//지울 메세지의 번호, 해당 메세지의 비밀번호를 받아서 비밀번호가 일치하면 지움
	public void deleteMessage(int messageId, String password) {
		
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			// conn.setAutoCommit(false) => 자동 커밋안하고 시작점 지정 , conn.setAutoCommit(true) => 자동커밋함
			conn.setAutoCommit(false);	
			
			MessageDao messageDao = MessageDao.getInstance();
			Message message = messageDao.select(conn, messageId);
			
			if(message == null) {
				throw new MessageNotFoundException("메세지 없음");
			}
			if(!message.matchPassword(password)) {
				throw new InvalidPasswordException("bad password");
			}
			messageDao.delete(conn, messageId);	//**
			
			conn.commit();	//완전저장(끝점)
			
		} catch (SQLException ex) {
			JdbcUtil.rollback(conn);	//예외 발생시 저장하지 않고 취소
			throw new ServiceException("삭제 실패: " + ex.getMessage(), ex);
		}catch(InvalidPasswordException | MessageNotFoundException	ex) { //예외 발생시 저장하지 않고 취소
			JdbcUtil.rollback(conn);
			throw ex;
		}finally {
			JdbcUtil.close(conn);
		}
		
	}
	
}
