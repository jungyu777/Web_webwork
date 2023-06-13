<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setAttribute("hobby", "game/programming/piano");
	request.setAttribute("friends", "김구라,해골,원숭이,유재석,김종국,하하");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
	<h1>forTokens 활용</h1>
	<h2>취미 목록</h2>
	<ul><%-- request.setAttribute("hobby", "game/programming/piano");--%>
		<c:forTokens var="tmp" items="${hobby }" delims="/">
			<li>${tmp }</li>
		</c:forTokens>
	</ul>
	<h2>친구목록</h2>
	<ul><%-- request.setAttribute("friends", "김구라,해골,원숭이");--%>
		<c:forTokens var="tmp" items="${friends }" delims=",">
			<li>${tmp }</li>
		</c:forTokens>
	</ul>
</body>
</html>