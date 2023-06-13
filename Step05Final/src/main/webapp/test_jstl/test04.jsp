<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	//test를 위해 sample data를 request 영역에 담기
	request.setAttribute("jumsu", 99);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
	<%--JSTL if else문은 없고 대신할게있다 
										== 또는 eq
										!= 또는 ne
										< 또는 lt
										> 또는 gt
										<= 또는 le
										>= 또는 ge
	--%>
	<c:if test="true">
		<p>true면 출력되고 false면 출력안된다</p>
	</c:if>
	<c:if test="${10%2 eq 0 }">
		<p>10은 짝수 입니다</p>
	</c:if>
	<c:if test="${11%2 eq 0 }">
		<p>11은 짝수입니다</p>
	</c:if>
	
	<c:if test="${jumsu%2 eq 0 }">
		<p>${jumsu }는 짝수 입니다</p>
	</c:if>
	<p>획득한 점수는 <strong>${jumsu }</strong>입니다</p>
	<p>
		따라서 이번 학기 학점은
		<c:choose>
			<c:when test="${jumsu ge 90 }">A</c:when>
			<c:when test="${jumsu ge 80 }">B</c:when>
			<c:when test="${jumsu ge 70 }">C</c:when>
			<c:when test="${jumsu ge 60 }">D</c:when>
			<c:otherwise>F</c:otherwise>
		</c:choose>
		입니다.......
	</p>
	
	<p>
		<strong>${jumsu }</strong>는
		<c:choose>
			<c:when test="${jumsu%2 eq 0 }">
				짝수
			</c:when>
			<c:otherwise>
				홀수
			</c:otherwise>
		</c:choose>
		입니다.
	</p>
	<%
		String id=(String)session.getAttribute("id");
	%>
	<%if(id == null){ %>
		<p>로그인이 필요 합니다.</p>
	<%}else{ %>
		<p><string><%=id %></string> 님 로그인중...</p>
	<%} %>
		<p>
		<strong>${id }</strong>는
		<c:choose>
			<c:when test="${id ne  null }">
				료그인중
			</c:when>
			<c:otherwise>
				로그인필요
			</c:otherwise>
		</c:choose>
		입니다.
	</p>
</body>
</html>