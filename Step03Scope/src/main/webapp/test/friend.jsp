<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	List<String> list = (List<String>)request.getAttribute("list");

%>

</body>
		<h3>친구목록입니다</h3>
		<ul>
			<%for(String tmp:list){ %>
				<li><%=tmp %></li>
			<%} %>		
		</ul>
</html>