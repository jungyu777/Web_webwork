<%@page import="test.file.dto.FileDto"%>
<%@page import="java.util.List"%>
<%@page import="test.file.dao.FileDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   List<FileDto> list = FileDao.getInstance().getList();
	//로그인된 아이디 (로그인이 되어 있지 않으면 null이다)
   String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div class="container">
      <a href="${pageContext.request.contextPath }/file/private/upload_form.jsp">업로드 하기</a>
      <br />
      <a href="${pageContext.request.contextPath }/file/private/upload_form2.jsp">ajax업로드 하기</a>
      <h1>자료실 목록입니다. </h1>
      <table>
         <thead>
            <tr>
               <th>번호</th>
               <th>작성자</th>
               <th>제목</th>
               <th>파일명</th>
               <th>등록일</th>
               <th>삭제</th>
            </tr>
         </thead>
         <tbody>
            <%for(FileDto tmp : list) {%>
               <tr>
                  <td><%=tmp.getNum() %></td>
                  <td><%=tmp.getWriter() %></td>
                  <td><%=tmp.getTitle() %></td>
                  <td>
                     <a href="download.jsp?num=<%=tmp.getNum() %>"><%=tmp.getOrgFileName() %></td>
                  <td><%=tmp.getRegdate() %></td>
                  <td>
                  <!-- 글의 작성자와 로그인된 아이디와 같을떄만 출력  작성자 알아내는법-->
                  	<%if(tmp.getWriter().equals(id))%>
                  	<a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a>
                  		<% } %>
                  		<!-- delete.jsp 페이지에서는
                  			1.삭제할 파일번호를 이용해서 파일정보를 얻어온다.
                  			2.해당파일을 파일시스템에서 실제로 삭제하다.
                  			3.DB에서 해당 파일의 정보를 삭제한다.
                  			4.응답한다. -->
                  </td>
               </tr>
         </tbody>
      </table>
   </div>
</body>
</html>