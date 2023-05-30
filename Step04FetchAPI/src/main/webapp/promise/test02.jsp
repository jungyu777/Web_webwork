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
	<h1>Promise 테스트</h1>
	<script>
		let p1 = new Promise(function(resolve,reject){
			/*
			함수의 인자로 전달되는 resolve , reject 는 함수이다.
			resolve 는 작업을 완료 했을떄 호출 해야하는 함수
			reject 는 작업이 실패 했을떄 호출해야하는 함수
			resolve함수가 호출되면 .then()안에 있는 함수가 자돋 호출된다.
			reject 함수가 호출되면 .catch()안에 있는 함수가 자동 호출된다.
			*/
			//resolve(); -> .then
			reject();   //-> catch()
			console.log("reject 함수를 호출 했습니다.");
		});
		//2. Promise 가 resolve 되었을떄 호출되는 함수 등록
		p1.then(function(){
			console.log("then 안에 있는 함수가 호출되었습니다.")
		});
		//3. p1 Promise 가 reject 되었을떄 호출되는 함수 등록
		p1.catch(function(){
			console.log("catch 안에 있는 함수가 호출되었습니다.")
		});
	</script>

</body>
</html>