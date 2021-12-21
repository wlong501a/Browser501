package ch15.guestbook.service;
//p462
public class InvalidPasswordException extends ServiceException {

	private static final long serialVersionUID = 1L;

	public InvalidPasswordException(String message) {
		super(message);
	}
	
	

}
