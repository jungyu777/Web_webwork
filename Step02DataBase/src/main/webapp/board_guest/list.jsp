<%@page import="test.guest.dto.GuestDto"%>
<%@page import="java.util.List"%>
<%@page import="test.guest.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>방문객목록</h1>
			<div class="text-end">
				<a href="insertform.jsp">게스트추가</a>
			
			</div>
		 <table class="table table-striped table-dark">
        <colgroup>
            <col width="100">
            <col width="200">
            <col width="300">
            <col width="100">
            <col width="100">
        </colgroup>
			<thead  class="table-light">
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>만족도</th>
					<th>패스워드</th>
					<th>방문날짜</th>
				</tr>
			</thead>
		
			<%
			//객체의 참조값 얻어오기
			GuestDao dao =  GuestDao.getInstance();
			//회원목록 얻어오기
			List<GuestDto> list = dao.getList();
			%>
			<tbody>
					
						<%for(GuestDto tmp: list){%>
					<tr>
						
							<td  class="table-success"> <%=tmp.getNum()%></td>
							<td  class="table-info"> <%=tmp.getWriter()%></td>
							<td  class="table-primary"> <%=tmp.getContent()%></td>
							<td  class="table-primary"> <%=tmp.getPwd()%></td>
							<td  class="table-primary"> <%=tmp.getRegdate()%></td>
							<td>
								<a href="delete2.jsp">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-basket" viewBox="0 0 16 16">
  										<path d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1v4.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 13.5V9a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h1.217L5.07 1.243a.5.5 0 0 1 .686-.172zM2 9v4.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V9H2zM1 7v1h14V7H1zm3 3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 4 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 6 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 8 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5z"/>
									<span class="visually-hidden">삭제</span>
								</svg>
								</a>
							</td>
							
							<% }%>
					</tr>
			</tbody>
		</table>
		
		</div>
</body>
</html>