<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%
  	//1. post 방식으로 전송되는 회원의 이름,주소를 추출한다.
	request.setCharacterEncoding("utf-8");
 	String writer=request.getParameter("writer");
  	String content=request.getParameter("content");
  	String pwd=request.getParameter("pwd");
  	String regdate=request.getParameter("regdate");
    
	GuestDto dto = new GuestDto();
    
	dto.setWriter(writer);
	dto.setContent(content);
	dto.setPwd(pwd);
	dto.setRegdate(regdate);
     //2.DB에 저장한다.
 	GuestDao dao =  GuestDao.getInstance();
 	boolean isSuccess = dao.insert(dto);

 	//3.응답한다.
    %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
			<div class="container"></div>
	<h1>알림</h1>
	<%if(isSuccess){%>
		<p>
			<strong><%=writer %></strong>님이 저장되었습니다.
			<a href="list.jsp">확인</a>
		</p>
	<%}else{ %>
		<p>
			리뷰저장실패!!
			<a href="insertform.jsp">다시 작성</a>
		</p>
	<%} %>
		
		
</body>
</html>