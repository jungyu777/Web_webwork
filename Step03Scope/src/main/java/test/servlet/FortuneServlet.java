package test.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;
@WebServlet("/fortune")
public class FortuneServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//오늘의 운세를 얻어오는 비즈니스 로직을 수행(DB에서 일어왔다고 가정)
		String fortune= "동쪽으로 가면 귀인을 만나요!";
		
		/*
		 * HttpServletRequest 객체이ㅡ setAttribute(key:value)메소드를 이용해서 응답에 필요한
		 * 데이터를 담아둘수가 있다.
		 * 담은 데티어는 응답하기 전까지 유효하며 응답을 ㅏ친 이후에는 없어지는 1회성 데이터이다.
		 * 담은 데이터를 얻어내는 방법은
		 * HttpServletRequest 객체의 getAttribute(key)메소드를 활용하면된다.
		 * 단, 담을떄는 Object type으로 받아주기 때문에 어떤 type이든 담을수 있지만
		 * 얻어낼떄도 역시 Object type으로 return 되기 떄문에 원래 type을 기억하고 있다가
		 * casting 하는것이 필요하다
		 * 
		 * 예를들어 "fortuneToday" 라는 key 값으로 String type 을 담았다면 
		 * 얻어낼떄는 아래와 같은 타입으로 만드는 변수 타입과 케스팅하는 타입이 같아야한다
		 * String a = (String)request.getAttribute("fortuneToday");  
		 * 
		 */
		req.setAttribute("fortuneToday", fortune);//String 으로 키값저장  오브젝트로 벨류 전달
		
		
		//응답을 여기서 하지 않고 jsp페이지로 응답을  위임할수 있다.
		//요청전달자 객체 : req.getRequestDispatcher
		//리턴타입은 : RequestDispatcher
		RequestDispatcher rd = req.getRequestDispatcher("/test/fortune.jsp");
		
		
		/*
		 * webapp/test/fortune,jsp 페이지에게 응답을 대신하도록 하고
		 * 서블릿에 전달받았던 HttpSernletRequest, HttpServeltRespons 객체의 참조값을  전달해준다
		 */
		rd.forward(req, resp);
		
	}
}
