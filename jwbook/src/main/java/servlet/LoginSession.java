package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/session")
public class LoginSession extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 인코딩(폼에서 받을때)
		request.setCharacterEncoding("utf-8");
		
		//브라우저로 응답(내보내기) - 한글 인코딩
		response.setContentType("text/html; charset=utf-8");
		
		//폼에 입력된 데이터 받기
		String id = request.getParameter("uid");
		String pw = request.getParameter("passwd");
		
		PrintWriter out = response.getWriter();
		
		//세션 클래스
		HttpSession session = request.getSession();
		
		if(id.equals("itkh") && pw.equals("b19")) {
			session.setAttribute("userId", id);
			out.append(id + "님이 로그인했습니다.");
		}else {
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 틀립니다.')");
			out.println("history.go(-1)");
			out.println("</script>");
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}
