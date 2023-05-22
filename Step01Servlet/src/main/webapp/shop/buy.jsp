<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//get 방식 전송은 한글이 꺠지지 않기 떄문에 아래의 한줄은 필요없다.
request.setCharacterEncoding("utf-8");

/*
		전달되는 파라미터가 숫자인 경우에 실제 숫자로 바꿔야 되는 경우가 많다
		그런경우 Integer 클래스 혹은 Double클래스의
		parseInt(), parseDiuble() static 메소드를 활용하면된다

*/



   //몇번 상품 몇개인지를 HTTPServletRequest객체를 이용해서 얻어낸 다음
   //아래의 html 요소에 출략해보세요.
   request.setCharacterEncoding("utf-8");
   String number=request.getParameter("num");
   String mount=request.getParameter("amount");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/buy.jsp</title>
</head>
<body>
   <p>
      <strong><%=number %></strong>번 상품 <strong><%=mount %></strong>개를 주문했습니다.
   </p>
</body>
</html>