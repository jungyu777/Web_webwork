<%@page import="test.dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%List<MemberDto> list = new ArrayList<>();
	list.add(new MemberDto(1,"김구라","신사동"));
	list.add(new MemberDto(2,"해골","행복동"));
	list.add(new MemberDto(3,"원숭이","동물원")); %>
	 <h1>table 요소 사용하기</h1>
    <table border="1" class="my-table">
        <!-- 표의 제목은 caption 에 표기 한다 -->
        <caption>회원목록</caption>
        <!-- 칼럼의 폭을 조절하고 싶으면 colgroup 요소를 활용한다.
            colgroup 의 자식 요소인 col의 width 가 칼럼의 폭이된다. -->
        <colgroup>
            <col width="100">
            <col width="200">
            <col width="300">
        </colgroup>
        <thead>
            <tr>
                <th>번호</th>
                <th>이름</th>
                <th>주소</th>
            </tr>
        </thead>
        <tbody>
            <%  for(MemberDto tmp: list ) {%>
            <%  out.println("<tr>");
              out.println("<td>"+tmp.getNum()+"</td>");
              out.println("<td>"+tmp.getName()+"</td>");
              out.println("<td>"+tmp.getAddr()+"</td>");
              out.println("</tr>");%>
          <%  } %>
	        <%for(MemberDto tmp:list) { %>
	         <tr>
	            <td><%=tmp.getNum() %></td>
	            <td><%=tmp.getName() %></td>
	            <td><%=tmp.getAddr() %></td>
	         </tr>
	      	<%} %>
	          
          
        </tbody>
    </table>

</body>
</html>