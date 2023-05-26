<%@page import="test.member.dto.MemberDto"%>
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
	MemberDto dto = (MemberDto)request.getAttribute("dto");
%>
	<div class="container">
		<h3>회원한명의 정보</h3>
		<p>번호<%=dto.getNum()%></p>
		<p>이름<%=dto.getName()%></p>
		<p>주소<%=dto.getAddr()%></p>
	</div>
</body>
</html>