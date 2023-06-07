<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session.setAttribute가 오브젝트 타입으로 가져오기 떄문에 케스팅으로 변환해서 담아줘야한다
	//session scope 에 "id" 라는 키값으로 저장된 문자열이 있는지 읽어와 본다.
	String id = (String)session.getAttribute("id");
	//로그인을 했다면 null이 아니고 안했다면 null이다
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
<scritp src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></scritp>
</head>
<body>
	<div class="container">
		<%if(id != null){ %>
			<p>
				<a href="${pageContext.request.contextPath}/users/private/info.jsp"><%=id %></a>님 로그인중......
				<a href="${pageContext.request.contextPath}/users/logout.jsp">로그아웃!!</a>
			</p>
		<%}else{ %>
		
		<%} %>
		<h1>인덱스 페이지 입니다</h1>
		<ul>
			<li><a href="${pageContext.request.contextPath}/users/signup_form.jsp">회원가입</a></li>
			<li><a href="${pageContext.request.contextPath}/users/loginform.jsp">로그인</a></li>
			<li><a href="${pageContext.request.contextPath}/private/game.jsp">놀러가기(로그인 필요)</a></li>
			<li><a href="${pageContext.request.contextPath}/private/study.jsp">놀러가기(로그인 필요)</a></li>
			<li><a href="file/list.jsp">자료실</a></li>
		</ul>
	</div>
</body>
</html>