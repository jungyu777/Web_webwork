<%@page import="test.member.dao.JobDao"%>
<%@page import="test.member.dto.JobDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    
    
    <%
  	//1. post 방식으로 전송되는 회원의 이름,주소를 추출한다.
	request.setCharacterEncoding("utf-8");
 	String name=request.getParameter("name");
  	String addr=request.getParameter("addr");
    //추가할 회원정보를 MemberDto() 객체에 담는다
	JobDto dto = new JobDto();
	dto.setName(name);
	dto.setAddr(addr);  
     //2.DB에 저장한다.
 	JobDao dao =  JobDao.getInstance();
 	boolean isSuccess = dao.insert(dto);

 	//3.응답한다.
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert Job</title>
</head>
<body>
		
	<div class="container"></div>
	<h1>알림</h1>
	<%if(isSuccess){%>
		<p>
			<strong><%=name %></strong>할일이  저장되었습니다.
			<a href="list.jsp">확인</a>
		</p>
	<%}else{ %>
		<p>
			할일정보 저장 실패!
			<a href="insertform.jsp">다시 작성</a>
		</p>
	<%} %>
		
		
</body>
</html>