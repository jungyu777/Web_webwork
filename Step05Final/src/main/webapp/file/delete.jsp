<%@page import="java.io.File"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="test.file.dao.FileDao"%>
<%@page import="test.file.dto.FileDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//	delete.jsp 페이지에서는
//	1.삭제할 파일번호를 이용해서 파일정보를 얻어온다.
//	2.해당파일을 파일시스템에서 실제로 삭제하다.
//	3.DB에서 해당 파일의 정보를 삭제한다.
//	4.응답한다. 
	int num=Integer.parseInt(request.getParameter("num"));
	//삭제할 파일의 정보를 DB에서 읽어오기
	FileDto dto = FileDao.getInstance().getData(num);
	
	//로그인된 아이디와 글의 작성자가 일치하는지 확인하기
	String id = (String)session.getAttribute("id");
	if(!dto.getWriter().equals(id)){
		//에러응답하기
		response.sendError(404,"남의 파일 지우면 혼난다!");
		//메소드를 여기서 끝내기
		return;
	}
	
	//3.  파일 시스템에서 삭제한다.
	String path = application.getRealPath("/upload")+File.separator+dto.getSaveFileName();
	File f= new File(path);
	f.delete();
	//4. DB에서 삭제하기
	FileDao.getInstance().delete(num);
	//5. 응답하기
	String cPath = request.getContextPath();
	response.sendRedirect(cPath + "/file/list.jsp"); //파일 목록보기로 다시 리다일렉트 이동 시킨다.
%>

    
