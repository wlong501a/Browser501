package ch15.guestbook.service;
//p455 O

import java.util.List;

import ch15.guestbook.model.Message;

public class MessageListView {
	
	private int messageTotalCount;	// 메세지 총 개수
	private int currentPageNumber;	// 요청 페이지 번호
	private List<Message> messageList;	// 메세지 목록
	private int pageTotalCount;	// 총 페이지 수
	private int messageCountPerPage;	//페이지당 메세지 출력 개수
	private int firstRow;	// 현재 메세지 목록 시작 행
	private int endRow;	// 현재 메세지 목록 끝 행
	
	//생성자 (메세지목록,메세지총개수,요청페이지,페이지당 메세지 출력개수,시작행,끝행)
	public MessageListView(List<Message> messageList, int messageTotalCount, int currentPageNumber,
							int messageCountPerPage, int startRow, int endRow) {
		this.messageTotalCount = messageTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.messageList = messageList;
		this.messageCountPerPage = messageCountPerPage;
		this.firstRow = startRow;
		this.endRow = endRow;
		
		calculatePageTotalCount();
	}
	//전체 페이지 수 구하기
	private void calculatePageTotalCount() {
		if(messageTotalCount == 0) {
			pageTotalCount = 0;
		}else {
			pageTotalCount = messageTotalCount / messageCountPerPage;	
			if(messageTotalCount % messageCountPerPage > 0) {
				pageTotalCount ++;	//예) 2.333 일 경우 3페이지 필요
			}
		}
	}

	public int getMessageTotalCount() {
		return messageTotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public List<Message> getMessageList() {
		return messageList;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public int getMessageCountPerPage() {
		return messageCountPerPage;
	}
//전체 메시지 중에서 현재 페이지 목록의 시작행(페이지 목록중 가장 최근메시지(message_id가 제일 큼)
	public int getFirstRow() {
		return firstRow;
	}

	public int getEndRow() {
		return endRow;
	}
	// 공란이면 총 매세지 개수는 0
	public boolean isEmpty() {
		return messageTotalCount == 0;
	}

}
