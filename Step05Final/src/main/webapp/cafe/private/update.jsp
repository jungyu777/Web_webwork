<%@page import="test.cafe.dao.CafeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
   CafeDto dto=new CafeDto();
   
   int num=Integer.parseInt(request.getParameter("num"));
   dto.setNum(num);
   
   String title=request.getParameter("title");
   dto.setTitle(title);
   
   String content=request.getParmeter("content");
   dto.setCotent(content);
   
 --%>

<jsp:useBean id="dto" class="text.cafe.dto.CafeDto"/> 
<jsp:setProperty property="num" name="dto"/>
<jsp:setProperty property="title" name="dto"/>
<jsp:setProperty property="content" name="dto"/>
<%
	//위의 jsp 액션테그로 생성되뉴CafeDto 객체에 담긴 글 내용을 수정반영하고
	boolean isSuccess= CafeDao.getInstance().update(dto);

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
      <%if(isSuccess){ %>
            <p>
                수정 했습니다.
               <a href="${pageContext.request.contextPath }/cafe/detail.jsp?num=<%=dto.getNum()%>">확인</a>
            </p>
         <%}else{ %>
            <p>
               수정 실패했습니다.
               <a href="updateform.jsp?num=<%=dto.getNum() %>">다시 수정하러 가기</a>
            </p>
         <%} %>
   </div>
</body>
</html>

