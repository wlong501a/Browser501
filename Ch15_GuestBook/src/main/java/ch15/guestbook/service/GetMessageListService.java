package ch15.guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import ch15.guestbook.dao.MessageDao;
import ch15.guestbook.model.Message;
import ch15.jdbc.JdbcUtil;
import ch15.jdbc.connection.ConnectionProvider;

//p457
public class GetMessageListService {

	//싱글톤
	private static GetMessageListService instance = new GetMessageListService();
	
	public static GetMessageListService getInstance() {
		return instance;
	}
	private GetMessageListService() {
		
	}//
	
	private static final int MESSAGE_COUNT_PER_PAGE = 3; 	//한 페이지당 메세지 3개 출력 고정
	
	//페이지에 나와 있는 메세지 보여주기
	public MessageListView getMessageList(int pageNumber) {
		Connection conn = null;
		int currentPageNumber = pageNumber;
		
		try {
			conn = ConnectionProvider.getConnection();	//객체생성
			MessageDao messageDao = MessageDao.getInstance();	//객체생성
			
			int messageTotalCount = messageDao.selectCount(conn);	//등록된 메세지 개수
			
			List<Message> messageList = null;
			int firstRow = 0;
			int endRow = 0;
			
			//메세지가 1개라도 있다면
			if(messageTotalCount > 0) {
				firstRow = (pageNumber-1)*MESSAGE_COUNT_PER_PAGE + 1;	//message_id 번호가 아니고 행번호를 말함. 1번행
				endRow = firstRow + MESSAGE_COUNT_PER_PAGE - 1;	//3번행
				messageList = messageDao.selectList(conn, firstRow, endRow);
			}else {
				currentPageNumber = 0;
				messageList = Collections.emptyList();	// ← ??
			}
			return new MessageListView(messageList, messageTotalCount, currentPageNumber,
									MESSAGE_COUNT_PER_PAGE, firstRow, endRow);
		} catch (SQLException e) {
			throw new ServiceException("목록 구하기 실패: "+e.getMessage(), e);
		}finally {
			JdbcUtil.close(conn);
		}
	}
}
