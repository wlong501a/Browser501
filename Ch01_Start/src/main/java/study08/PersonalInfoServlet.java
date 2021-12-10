package study08;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/pinfo")
public class PersonalInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		PersonalInfo obj = new PersonalInfo();
		obj.setName("홍길동");
		obj.setGender('남');
		obj.setAge(24);
		
		//obj객체에 값담기
		request.setAttribute("pinfo", obj);
		//obj객체를 view로 보여줄 jsp로 보내줌
		RequestDispatcher d = request.getRequestDispatcher("study08_javabean_servlet/customerInfoViewer.jsp");
		d.forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
