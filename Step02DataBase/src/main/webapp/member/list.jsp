<%@page import="java.util.List"%>
<%@page import="test.member.dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>/member/list.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
<scritp src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></scritp>

</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="member" name="current"/>
	</jsp:include>
		<div class="container">
			<h1>회원목록입니다.</h1>
				<div class="text-end">
					<a href="insertform.jsp">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-plus-fill" viewBox="0 0 16 16">
  					<path d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v1h16V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4V.5zM16 14V5H0v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2zM8.5 8.5V10H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V11H6a.5.5 0 0 1 0-1h1.5V8.5a.5.5 0 0 1 1 0z"/>
				</svg>
			<span class="visually-hidden">회원추가</span>
			</a>
		</div>
		  <table class="table table-striped table-dark">
        <colgroup>
            <col width="100">
            <col width="200">
            <col width="300">
        </colgroup>
			<thead  class="table-light">
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>주소</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			
			<%
			//객체의 참조값 얻어오기
			MemberDao dao =  MemberDao.getInstance();
			//회원목록 얻어오기
			List<MemberDto> list = dao.getList();
			%>
			<tbody>
					
						<%for(MemberDto tmp: list){%>
					<tr>
						
							<td  class="table-success"> <%=tmp.getNum()%></td>
							<td  class="table-info"> <%=tmp.getName()%></td>
							<td  class="table-primary"> <%=tmp.getAddr()%></td>
							<td>
								<a href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a>
							</td>
							<td>
							
								<a href="delete.jsp?num=<%=tmp.getNum()%>">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-basket" viewBox="0 0 16 16">
  										<path d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1v4.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 13.5V9a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h1.217L5.07 1.243a.5.5 0 0 1 .686-.172zM2 9v4.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V9H2zM1 7v1h14V7H1zm3 3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 4 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 6 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 8 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5z"/>
									<span class="visually-hidden">삭제</span>
								</svg>
								</a>
							</td>
							
						<%}%>
					</tr>
				
			</tbody>
		</table>	
	</div>
	
</body>
</html>