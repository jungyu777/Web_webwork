<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%



%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
<% String fortune = (String)request.getAttribute("fortuneToday"); %>
	<div class="container">
		<p>오늘의 운세 :<strong><%=fortune %></strong></p>
	</div>
</body>
</html>