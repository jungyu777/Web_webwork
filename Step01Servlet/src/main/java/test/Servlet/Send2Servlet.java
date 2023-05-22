package test.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/send2")
public class Send2Servlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String msg = req.getParameter("msg");
		
		System.out.println("msg:" + msg); //입력한 문자열 출력
		
		//post 방식 전송할떄는 요청 인코딩 설정을 해 주어야 한글이 꺠지지 않는다.
		//응답 인코딩 설정
	      resp.setCharacterEncoding("utf-8");
	      //응답 컨텐트 설정
	      resp.setContentType("text/html; charset=utf-8");
	      //클라이언트에게 문자열을 응답할수있는 객체의 참조값 얻어내기
	      PrintWriter pw=resp.getWriter();
	      pw.println("<!doctype html>");
	      pw.println("<html>");
	      pw.println("<head>");
	      pw.println("<meta charset='utf-8'>");
	      pw.println("<title>msg파라미터값 가져오기</title>");
	      pw.println("</head>");
	      pw.println("<body>");
	    
	      pw.println("<p> post전송방식 메세지 잘 받았어 클라이언트야!</p>");
	      pw.println("</body>");
	      pw.println("</html>");
	      pw.close();
	}
}
