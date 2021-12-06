package study;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/study02/Sport")
public class SportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * request.setCharacterEncoding("utf-8");
		 * response.setContentType("text/html;charset=utf-8");
		 * 
		 * String exercise = request.getParameter("exercise"); String gender =
		 * request.getParameter("gender");
		 * 
		 * PrintWriter out = response.getWriter();
		 * out.println("<html><body> 좋아하는 운동2: "+exercise+"<br>성별: "+gender+
		 * "</body></html>");
		 */
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
//		exercise값이 여러개 선택을 할 수있기때문에 getParameterValues()사용한다
		String[] sports = req.getParameterValues("exercise");
		String gender = req.getParameter("gender");
		
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		for(String s : sports) {
			out.println("좋아하는 운동 :"+s+"<br>");
		}
		out.println("성별 :"+gender);
		out.println("</body></html>");
	}

}
