package ch15.guestbook.service;
//p454	O에러메세지
public class ServiceException extends RuntimeException{

	public ServiceException(String message, Exception cause) {
		super(message,cause);
	}
	
	public ServiceException(String message) {
		super(message);
	}
}
