<%@page import="java.util.List"%>
<%@page import="test.guestdao.GuestDao"%>
<%@page import="test.guestdto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    	//폼 전송되는 방명록 작성자, 글내용을 읽어온다. 작성자 글내용 비밀번호를 읽어온다
    	request.setCharacterEncoding("utf-8");
		String writer=request.getParameter("writer");
		String content=request.getParameter("content");
		String pwd=request.getParameter("pwd");
    	//DB에 저ㅓ장한다
    	GuestDto dto=new GuestDto();
		dto.setWriter(writer);
		dto.setContent(content);
		dto.setPwd(pwd);
		boolean isSuccess=GuestDao.getInstance().insert(dto);
    	//웨에껄 전달한다
    	
    	//응답한다
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
	<!-- 이 주석은 웹브라우저에게 출력되지만 웹브라우저가 무시하는 주석 -->
	<%-- 이 주석은 jsp 페이지가 무시하는 주석(웹브라우저에 출력되지 않는다) --%>
	<%--javascript 응답하기 --%>
	<%--스크립트 영역에 출력하는 문자열은 클라이언트가 자바스크립트로 해석을 하기 때문에 자바스크립트 문법에 어긋나면 안된다 --%>
	<script>
		<%if(isSuccess){%>
			//알림창 띄우기
			alert("글을 성공적으로 등록했습니다");
			//javascript 로 페이지 이동
			location.href="${pageContext.request.contextPath}/guest/list.jsp";
		<%}else{%>
			alert("등록실패!");
			location.href="${pageContext.request.contextPath}/guest/insertform.jsp";
		<%}%>
	
	
	</script>

</body>
</html>