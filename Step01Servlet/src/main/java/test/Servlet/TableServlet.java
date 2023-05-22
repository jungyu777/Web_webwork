package test.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dto.MemberDto;
@WebServlet("/member/list")
public class TableServlet extends HttpServlet{
//	클라이언트가 /member/list 경로로 요청을 해오면 우리가 만든 MemberListServlet클래스로 생성된 객체가 응답을한다
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
	      pw.println("<title>테이블 만들기</title>");
	      pw.println("</head>");
	      pw.println("<body>");
	      pw.println("<h1>테이블</h1>");
	      List<MemberDto> list = new ArrayList<>();
	      list.add(new MemberDto(1,"김구라","신사동"));
	      list.add(new MemberDto(2,"해골","행복동"));
	      list.add(new MemberDto(3,"원숭이","동물원"));
	      pw.println("  <h1>table 요소 사용하기</h1>"); 
//	      pw.println(" <table border=\"1\" class=\"my-table\">"); ""안에 ""넣을려면 시작전\끝나기전\
	         pw.println(" <table border=\"1\" class=\"my-table\">"); 
	             
	         pw.println("  <caption>회원목록</caption>");    
	            
	           
	         pw.println("  <colgroup>");  
	         pw.println(" <col width=\"100\">");  
	         pw.println("<col width=\"200\">");  
	         pw.println(" <col width=\"300\">");    
	         pw.println("  </colgroup>");   
	         pw.println("  <thead>");  
	         pw.println(" <tr>");   
	         pw.println(" <th>번호</th>");   
	         pw.println(" <th>이름</th>");  
	         pw.println(" <th>주소</th>");   
	         pw.println(" </tr>"); 
	         pw.println(" </thead>");
	         pw.println(" <tbody>"); 
	           
	         for(MemberDto tmp: list ) {
	            pw.println("<tr>");
	            pw.println("<td>"+tmp.getNum()+"</td>");
	            pw.println("<td>"+tmp.getName()+"</td>");
	            pw.println("<td>"+tmp.getAddr()+"</td>");
	            pw.println("</tr>");
	         }
	         pw.println("</tbody>");
	      pw.println("</body>");
	      pw.println("</html>");
	      pw.close();
		
	}
}
