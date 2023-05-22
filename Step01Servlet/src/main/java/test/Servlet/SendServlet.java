package test.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/send")
public class SendServlet extends HttpServlet{
	/*
	 * service()메소드에는 2개의 객체의 참조값이 매개변수에 전달된다.
	 * HttpServletRequest req객체 = > 요청과 관련된 작업을 처리할떄 사용한다.
	 * HttpServletRespinse resp객체=> 응답과 관련된 작업을 처리할떄 사용한다
	 * msg라는 파라미터명으로 전달되는 문자열을 읽어오는 메소드 req.getParameter("msg");
	 * 
	 * 
	 */
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		""msg" 라는 파라미터 명으로 전달되는  문자열을 읽어와서 msg 라는 지역변수에 담기
//		해당 파라미터 명으로 전달되는 정보가 없으면 null이 된다
		
		String msg = req.getParameter("msg");
		
		System.out.println("msg:" + msg); //입력한 문자열 출력
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
	    
	      pw.println("<p>  get전송방식 메세지 잘 받았어 클라이언트야!</p>");
	      pw.println("</body>");
	      pw.println("</html>");
	      pw.close();
	}
}
