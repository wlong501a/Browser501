package study10;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//wet.xml 있음
//Servlet에서 Servlet으로 데이터전송
@WebServlet("/study10_session/result")
public class ResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		String animal = request.getParameter("ANIMAL");

		HttpSession s = request.getSession();
		String food = (String) s.getAttribute("f");
		s.invalidate();
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>성격테스트</title></head><body><h3>성격테스트</h3>");
		out.printf("당신은 %s와 %s를 좋아하는 성격입니다.", food, animal);
		out.print("</body></html>");
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
