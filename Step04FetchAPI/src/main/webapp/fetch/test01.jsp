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
	<h1>fetch 함수 데스트</h1>
	<button id="myBtn">눌러보셈</button>
	<a href="${pageContext.request.contextPath}/index.jsp">눌러보셈</a>
	<script>
		document.querySelector("#myBtn").addEventListener("click",()=>{
			
			//prompt 함수가 호출되면 메세지를 입력할떄까지 동작이 멈춰있다
			const msg = prompt("메세지 입력..");
			
			console.log("입력안료!");
			
			console.log("-----");
			//fetch 함수가 무얼 하는 함수인지 잠시 테스트 해보세요
			//위의 링크를 눌렀을떄 와 차이점은 ?
			//버튼을 눌렀을떄 index.jsp페이지의 코드가 들이 console.log에 찍힌다
			//링크를 눌렀을떄는 index.jsp페이지로 이동하면서 요청된다
			//fetcg함수는 Promise가 리턴되어서 .then()을 사용할수있다
			fetch("${pageContext.request.contextPath}/index.jsp")
			.then((response)=>{
				return response.text();
			})
			.then((data)=>{//data는 String 타입 
				console.log(data);
			});
			
		});
	</script>
</body>
</html>