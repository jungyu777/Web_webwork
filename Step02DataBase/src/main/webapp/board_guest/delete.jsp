<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    /*
    	이페이지에 요청이 될떄 <a href="delete.jsp?num=x"></a>형식의 링크를 눌러서
    	get 방식 요청이 되는것이다.
    	따라서 GET 방식 요청 파라미터로 삭제할 회원의 번호가 전달이 된다.
    	해당 파라미터를 추출해서 DB에서 삭제하면된다.
    */
    //1.삭제할 회원의 번호를 얻어내서
    request.setCharacterEncoding("utf-8");
    int num = Integer.parseInt(request.getParameter("num"));
   
   	String writer = request.getParameter("pwd");
   
    GuestDto dto = new GuestDto(num,pwd);
    //2.DB에서 삭제하고
    boolean isSuccess=GuestDao.getInstance().delete(dto);
    /*
    	[리다일렉트 응답]
    	-클라이언트에게 특정 결로로 요청을 다시 하라고 응답하는갓이다.
    	-다시 요청할 경로를 전달하면 클라이언트가 해당경로로 요청을 다시 하게된다.
    	-따라서 순간적으로 페이지가 이동되게 된다.
    	-HttpServletResponse 객체의 기능을 활용하면된다.
    	-요청을 다시할 경로를 전달할떄는 반드시 절대경로로 전달하는 것이 좋다
    	-새로운 경로로 요청을 다시 하라고 강요하는것도 응답이다. 
    */
	
	 String cPath=request.getContextPath();
     
     response.sendRedirect(cPath+"/board_guest/list.jsp");
    
    
    
    %>
