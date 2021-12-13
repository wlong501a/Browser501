package study10;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/study10_session/animal")
public class AnimalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");

		String food = request.getParameter("FOOD");
		HttpSession s = request.getSession();
		s.setAttribute("f", food);
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>성격테스트</title></head><body><h3>좋아하는 동물은?</h3>");
		out.println("<form action='result'>");
		out.println("<input type='text' name='ANIMAL'>");
		out.println("<input type='submit' value='확인'>");
		out.println("</form></body></html>");
		
		
		
		
		
	}

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
