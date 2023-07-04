<%@page import="test.file.dto.FileDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
   //Servlet 단에서 담은 sample  데이터라고 가정하자
   List<String> list=new ArrayList<>();

   list.add("짜장면");
   list.add("치킨");
   list.add("피자");
   list.add("감자");
   list.add("오뎅");
   list.add("파절이");
   list.add("바나나");
   list.add("사과");
   // EL 로 추출할수 있도록 request  영역에 담는다. 
   request.setAttribute("list", list);
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
	<h1>공부하기</h1>
	<c:forEach var="tmp " items="${list }">
		<h1>${list }</h1>
	</c:forEach>
</body>
</html>