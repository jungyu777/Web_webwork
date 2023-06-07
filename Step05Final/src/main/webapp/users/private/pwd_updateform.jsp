<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div class="container">
      <h1>비밀 번호 수정 페이지</h1>
      
      <form action="pwd_update.jsp" method="post" id ="myForm">
      <label for="pwd">현재 비밀번호</label>
      <input type="password" id="pwd" name="pwd"/>
      
      <label for="newPwd">새 비밀번호</label>
      <input type="password" id="newPwd" name="newPwd"/>
      
      <label for="newPwd2">새 비밀번호 확인</label>
      <input type="password" id="newPwd2" />
      
      <button type="submit">수정하기</button>
      <button type="reset">리셋</button>
      
      </form>
   </div>
   <script>
      //폼에 submit 이벤트가 일어났을때 실행할 함수를 등록하고 
      document.querySelector("#myForm").addEventListener("submit",(e)=>{
         //입력한 새 비밀번호 2개를 읽어와서 
         let pwd1 = documemt.querySelector("#newPwd").value;
         let pwd2 = documemt.querySelector("#newPwd2").value;
         //만일 새 비밀번호와 비밀번호 확인이 일치 하지 않으면 폼 전송을 막는다.
         if(pwd1 != pwd2){
            alert("비밀번호를 확인하세요!");
            e.preventDefault();
         }
      });
   </script>

</body>
</html>