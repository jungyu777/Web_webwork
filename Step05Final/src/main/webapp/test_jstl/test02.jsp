<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	//테스트를 위해 sample 데이터를 request scope에 담는다.
	List<String> names= new ArrayList<String>();
	names.add("김구라");
	names.add("해골");
	names.add("원숭이");
	//list 라는 키값으로 request scope 에 ArrayList 객체 담아두기
	request.setAttribute("list", names);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
<%
	//request 영역에 "list" 라는 키값으로 저장된 값을 읽어와서 원래 type 을 casting
	List<String> list = (List<String>)request.getAttribute("list");
%>	

	<h1>친구목록</h1>
	<ul>
		<%for(String tmp:list){ %>
			<li><%=tmp %></li>
		<%} %>
	</ul>
	<ul>
		<c:forEach var="tmp" items="${requestScope.list }" >
		<%--items 에 담긴값이 tmp에 담긴다 --%>
			<li>${tmp }</li>
		
		</c:forEach>
		
	
	</ul>
		<h1>친구목록 인덱스 표시</h1>
		<ul>
		<c:forEach var="tmp" items="${requestScope.list }" varStatus="status">
			<%--varStatus="status" 인덱스값 얻어내기 --%>
		<%--items 에 당므값이 tmp에 담긴다 --%>
			<li>${tmp } <strong>${status.index }</strong></li>
		
		</c:forEach>
		
	
	</ul>
	</ul>
		<h1>친구목록 순서 표시</h1>
		<ul>
		<c:forEach var="tmp" items="${requestScope.list }" varStatus="status">
			<%--varStatus="status"  ${status.count } 순서표시--%>
		<%--items 에 당므값이 tmp에 담긴다 --%>
			<li>${tmp } <strong>${status.count }</strong></li>
		
		</c:forEach>
		
	
	</ul>
	</ul>
		<h1>친구목록 첫번쨰 순서인지 여부</h1>
		<ul>
		<c:forEach var="tmp" items="${list }" varStatus="status">
			<%--varStatus="status" ${status.first } --%>
		<%--items 에 당므값이 tmp에 담긴다 --%>
			<li>${tmp } <strong>첫번쨰 : ${status.first }</strong></li>
		
		</c:forEach>
		
	
	</ul>
	</ul>
		<h1>친구목록 마지막 순서인지 여부</h1>
		<ul>
		<c:forEach var="tmp" items="${list }" varStatus="status">
			<%--varStatus="status"  ${status.last }--%>
		<%--items 에 당므값이 tmp에 담긴다 --%>
			<li>${tmp } <strong>첫번쨰 : ${status.last }</strong></li>
		
		</c:forEach>
		
	
	</ul>
</body>
</html>