<%@page import="java.io.File"%>
<%@page import="test.cafe.dao.CafeDao"%>
<%@page import="text.cafe.dto.CafeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//	GET 방식 파라미터로 전달되는 삭제할 파일의 글번호 읽어오기
	int num=Integer.parseInt(request.getParameter("num"));
	//삭제할 파일의 정보를 DB에서 읽어오기
	CafeDto dto = CafeDao.getInstance().getData(num);

	//4. DB에서 삭제하기
	CafeDao.getInstance().delete(num);
	//5. 응답하기
	String cPath = request.getContextPath();
	response.sendRedirect(cPath + "/cafe/list.jsp"); //파일 목록보기로 다시 리다일렉트 이동 시킨다.
%>

