package servlet.dispatcher;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/disp/second")
public class SecondServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 인코딩(폼에서 받을때)
		request.setCharacterEncoding("utf-8");
		
		//브라우저로 응답(내보내기) - 한글 인코딩
		response.setContentType("text/html; charset=utf-8");
		
		//폼에 입력된 데이터 받기
		String name = request.getParameter("name");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("이름: " + name + "<br>");
		out.println("dispatcher를 이용한 포워딩 실습입니다.");
		out.println("</body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
