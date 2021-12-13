package study09;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/study09_cookie/CartSaveCookie")
public class CartSaveCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String product = request.getParameter("car");
		
		Cookie[]  cookies =  request.getCookies();
		Cookie c = null;
		
		//만약 쿠키가 없거나 쿠키의 길이가 0이라면 쿠키생성
		//기존에 쿠키가 있으면 기존쿠키에 쿠키 추가함(쿠키배열의 길이를 하나늘려줌)
		if(cookies == null || cookies.length == 0) {
			c = new Cookie("product",product);
		}else {
			c = new Cookie("product"+(cookies.length+1),product);
		}
		response.addCookie(c);
		
	
		out.print("<html><body>Product추가"+"<br>");
		out.print("<a href= 'CartBasketCookie'>장바구니보기</a>");
		out.print("</body></html>");
	}
	
	
	

}
