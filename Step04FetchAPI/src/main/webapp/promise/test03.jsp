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
		new Promise((resolve,reject)=>{
			//reject();
			resolve();
			console.log("resolve 호출됨");
			//console.log("reject() 호출됨");
		}).then(()=>{
			console.log("then() 안에 있는 함수 호출됨");
		}).catch(()=>{
			console.log("catch()안에 있는 함수 호출됨");
		});
			
		
	</script>
</body>
</html>