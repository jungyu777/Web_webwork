<%@page import="test.guestdao.GuestDao"%>
<%@page import="test.guestdto.GuestDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    //전체 방명록글 목록을 얻어와서
    List<GuestDto> list = GuestDao.getInstance().getList();
    //응답한다
    
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
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="guest" name="current"/>
	</jsp:include>
	<div class="container">
	<div>
		<a href="${pageContext.request.contextPath}/guest/insertform.jsp">글작성</a>
	</div>
		<h1>방명록 글 목록</h1>
		<table>
			<thead >
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>등록일</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<%for(GuestDto tmp: list){ %>
				<tr>
					<td><%=tmp.getNum()%></td>
					<td><%=tmp.getWriter()%></td>
					<td>
						<textarea  rows="4" readonly><%=tmp.getContent() %></textarea>
					</td>
					<td><%=tmp.getRegdate()%></td>
					<td><a href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a></td>
					<td>
						<form action="delete.jsp" method="post">
							<input type="hidden" name="num" value="<%=tmp.getNum()%>"/><%//삭제하기위한 글번호 %>
							<input type="password" name="pwd" placeholder="비밀번호..." />
							<button type="submit">삭제</button>
						</form>
					</td>
				</tr>
			<% }%>
			</tbody>
			
		</table>
	</div>
</body>
</html>