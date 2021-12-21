package ch15.guestbook.model;
//p448
public class Message {

	private int id;
	private String guestName;
	private String password;
	private String message;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGuestName() {
		return guestName;
	}
	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	//비밀번호가 값이 있고, 공백이 아닐 경우
	public boolean hasPassword() {
		return password != null && !password.isEmpty();	
	}
	
	//비밀번호 값이 있고 작성한 비밀번호와 등록된 비밀번호가 일치할 경우
	public boolean matchPassword(String pwd) {
		return password != null && password.equals(pwd); 
	}
	
}
