package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//p123 JSP=>Servlet 변경
@WebServlet("/ReadInitParameter_p123")
public class ReadInitParameter_p123 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		ServletContext sc = getServletContext();
		Enumeration<String> initparam = sc.getInitParameterNames();
		
		
		out.println("<html><body>초기화 파라미터 목록::<br>");
		out.println("::[getInitParameter()]::<br>");

			String logEnabled = sc.getInitParameter("logEnabled");
			String debugLevel = sc.getInitParameter("debugLevel");

			out.println("logEnabled : "+logEnabled+"<br>");
			out.println("debugLevel : "+debugLevel+"<hr>");
		
		
		
		
		out.println("<ul>");
		while(initparam.hasMoreElements()) {
			String name = initparam.nextElement();
			String value = sc.getInitParameter(name);
			out.println("<li>"+name+" : "+value+"</li>");
		}
		out.println("</ul></body></html>");
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
