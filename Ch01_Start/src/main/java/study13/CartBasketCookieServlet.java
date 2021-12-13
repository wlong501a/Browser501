package study13;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/study13_session/CartBasket")
public class CartBasketCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>");
		out.println("장바구니 리스트 <br>");
		
		Cookie[] cars = request.getCookies();
		
		if(cars != null) {
			for (Cookie c : cars) {
				out.print(c.getName()+" : "+c.getValue()+"<br>");
			}
		}else {
			out.println("장바구니 비었음.<br><br>");
		}
		
		out.println("<a href='cookie.html'>상품 선택 페이지</a><br>");
		out.println("<a href='CartDeleteCookie'>장바구니 비우기</a>");
		out.println("</body></html>");
	}

}
