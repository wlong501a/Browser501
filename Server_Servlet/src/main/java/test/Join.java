package test;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/test/join.do")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("pw");
		HttpSession session = request.getSession();
		
		MemberDAO m = new MemberDAO();
		ArrayList<Member> list = m.select();
		
		for(Member i : list) {
			if(i.getId().equals(id)) {
				if(i.getPassword().equals(password)) {
					session.setAttribute("id", id);
					request.setAttribute("result", 1);
				}else {
					request.setAttribute("result", 0);
				}
			}else {
				request.setAttribute("result", -1);
			}
		}
		RequestDispatcher d = request.getRequestDispatcher("login.jsp");
		d.forward(request, response);
		
	}

}
