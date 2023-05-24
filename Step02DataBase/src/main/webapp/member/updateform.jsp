<%@page import="test.member.dto.MemberDto"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
 	//1.수정할 폼을 제공하는 jsp페이지
	int num=Integer.parseInt(request.getParameter("num")); 
    //2.수정할 폼을 제출할 jsp페이지 (수정반영하는 jsp페이지)
	MemberDto dto=MemberDao.getInstance().getDate(num);
    // jsp페이지는 해석된 결과가 클라이언트 웹브라우저에 출력된다.

    // 따라서 여러분들이 의도하는 형식으로 정확히 킇하이언트에게 출력되었는지 

    //확인하는 것이 중요하다

    // 웹브라우저에서 마우스 우클릭=>페이지 소스보기를 해서 확인!!
    
    %>
   <%
   //1.수정할 회원의 번호를 얻어낸다
   
   //2.번호를 이용해서 DB에 저장된 수정할 회원의 정보를 얻어낸다.
   
   //3.수정할 양식을 클라이언트에게 응답한다
   
   %>
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
			<h1>회원 정보 수정 양식</h1>
			<form action="update.jsp" method="post">
				<div class="mb-1">
					<label class="form-label" for="num">번호</label>
					<input class="form-control" type="text"  id="num" name="num" value="<%=dto.getNum()%>" readonly/><%//readonly 번호수정안됨 %>
				</div >
				<div  class="mb-1">
					<label class="form-label" for="name">이름</label>
					<input class="form-control" type="text"  id="name" name="name" value="<%=dto.getName()%>"/>
				</div>
				<div  class="mb-1">
					<label class="form-label" for="addr">주소</label>
					<input class="form-control" type="text"  id="addr" name="addr" value="<%=dto.getAddr()%>"/>
				</div>
				<button class="btn btn-primary" type="submit">수정확인</button>
				<button class="btn btn-warning" type="reset">취소</button>
			</form>
		</div>
</body>
</html>