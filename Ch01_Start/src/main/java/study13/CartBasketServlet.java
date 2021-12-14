package study13;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/study13_session/CartBasket")
public class CartBasketServlet extends HttpServlet {
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
		
		//기존에 있던 세션을 사용하고 없으면 null
		HttpSession s = request.getSession(false);	
		s.setMaxInactiveInterval(200);	//200초
		
		//세션이 있다면 product이름을 갖는 값을 list에 담아서 출력
		if(s != null) {
			ArrayList<String> list = (ArrayList<String>) s.getAttribute("product");
			out.println("상품: " + list + "<br>");
		}else {
			out.println("세션 없음" + "<br>");
		}
		
		
		out.println("<a href='product.html'>상품 선택 페이지</a><br>");
		out.println("<a href='CartDelete'>장바구니 비우기</a>");
		out.println("</body></html>");
	}

}
