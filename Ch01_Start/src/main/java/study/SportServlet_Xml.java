package study;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


//@WebServlet("/study02/SportXml")
public class SportServlet_Xml extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
//		exercise값이 여러개 선택을 할 수있기때문에 getParameterValues()사용한다
		String[] sports = req.getParameterValues("exercise");
		String gender = req.getParameter("gender");
		
		//MVC2
		HttpSession sess = req.getSession();
		sess.setAttribute("s", sports);
		sess.setAttribute("g", gender);
		
		
		RequestDispatcher d = req.getRequestDispatcher("sport_mvc2.jsp?id=hong");
		d.forward(req, resp);//목적파일출력ㄴ
		
		
		
		//MVC1
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		for(String s : sports) {
			out.println("좋아하는 운동 :"+s+"<br>");
		}
		out.println("성별 :"+gender);
		out.println("</body></html>");
	}

}
