<%@page import="test.member.dao.JobDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
<%
	int num =Integer.parseInt(request.getParameter("num"));
	boolean isSuccess=JobDao.getInstance().delete(num);
%>

		<div class="container">
		<h1>알림</h1>
		<%if(isSuccess){ %>
			<p>
				<strong><%=num %></strong>번 회원정보를 삭제 했습니다
				<a href="list.jsp">목록보기</a>
			</p>
			<%}else{ %>
			<p>
				삭제실패
				<a href="list.jsp">목록보기</a>
				<% }%>
			</p>
			
		</div>
</body>
</html>