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


@WebServlet("/study13_session/CartSave")
public class CartSaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		String product = request.getParameter("car");
		
		//true가 디폴트값(새로만들겠다는 의미)
		HttpSession s = request.getSession(true);	
		
		//car를 불러와서 list에 저장
		ArrayList<String> list = (ArrayList<String>) s.getAttribute("product");	
		//ArrayList에 내용이 없으면 ArrayList생성해서 값을 담는다
		if(list == null) {
			list = new ArrayList<String>();
			list.add(product);
			s.setAttribute("product", list);
		}else {
		//ArrayList에 내용이 있으면 ArrayList를 만들지않고 기존꺼에 값만 담는다
			list.add(product);
		}
		
		out.println("<html><body>");
		out.println("Product 추가 <br> <a href='CartBasket'>장바구니 보기</a>");
		out.println("</body></html>");
	}

}
