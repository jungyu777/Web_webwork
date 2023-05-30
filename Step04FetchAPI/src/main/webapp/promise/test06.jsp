<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
	<h1>promise 테스트</h1>
	<script>
    function openDoor(){
        return new Promise(function(resolve){
           setTimeout(function(){
              console.log("1초를 소모하면서 문을 열었습니다.");
              resolve();
           }, 1000);
        });
     }
     function putElephant(){
        return new Promise(function(resolve){
           setTimeout(function(){
              console.log("3초를 소모하면서 코끼리를 집어 넣었습니다.");
              resolve();
           }, 3000);
        });
     }
     function closeDoor(){
        return new Promise(function(resolve){
           setTimeout(function(){
              console.log("2초를 소모하면서 문을 닫았습니다.");
              resolve();
           }, 2000);
        });
     }
     
     openDoor()
     .then(()=>{
    	 return putElephant();
     }).then(()=>{
    	 return closeDoor();
     }).then(()=>{
    	 console.log("꼬끼리를 성공적으로 냉장고에 넣었습니다. resolve(); 호출됨");
     }).catch(()=>{
    	 console.log("꼬끼리를 냉장고에 너는 도중에 에러가 발생했습니다. reject()호출 되는 경우에 나온다");
     });
	</script>
</body>
</html>