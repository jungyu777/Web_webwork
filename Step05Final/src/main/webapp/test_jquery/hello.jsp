<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
	<div class="container">
		<input type="text" id="inputMsg" placeholder="문자열 입력 ..."/>
		<button id="sendBtn">전송</button>
		<p id="result"></p>
		
	</div>
	
		<div>div1</div>
		<div class="my-class">div2</div>
		<div class="my-class">div3</div>
		<div id="one">div4</div>
	<script>
		//위의 input 요소에 문자열을 입력하고 전송버튼을 누르면 입력한 문자ㅏ열을 p 요소의 innerText에 출력되도록 해보세요
		/*document.querySelector("#sendBtn").addEventListener("click",()=>{
			const msg = document.querySelector("#inputmsg").value;
			document.querySelector("#result").innerText=msg;
		});  
		*/
		/*리턴되는 타입이 다르다 위에꺼는 오브젝트 
			jquery 는 리턴타입이 Array
			$( )<=여기에는 배열의 참조값이 리턴되는데 그 배열은 jquery의 기능이 추가된 배열이다.
			 	리던퇴는 배열에는 선택자에 부합하는 모든 무서객체의 참조값이 순서대로 들어 있다.  반복문을 돌 필요가 없다
			$(선택자를 문자열로 작성 css의 선택자와 동일하다).action()  
			#   .    요소명 , 속성, 자손, 자식 선택자 등등/
			
			.on=이벤트등록   .val=벨류    .text=innerText 
			*/
		//jquery 로 해봏기
		$("#sendBtn").on("click",()=>{ 
			const msg = $("#inputMsg").val();
			$("#result").text(msg);
		});
		//jquery 의 동작은 여러번 할수있다
		//$().action1().action2().action3()
		//$().val().text().css()
		/*
			jquery 를 이용하면 일괄동작되어서 
			javascript 처럼 for문으로 길게 코드를 짤 필요가없다
		*/
		
		
		/*
			$("div").first().text("hi") 제일 첫번쨰 div 에다가만 적용이된다
			$("#inputMsg").val() 리턴되는 타입이 메시지창에 입력한 값을 읽어오는것이고
			jquery 가 항상 jquery의 기능이 들어간 배열을 리턴하는것은 아니다
			$("#inputMsg").val("mdasdad") 인자로 값을 넣어주면 메시지창에 입력한 값을 넣어주면
			다시 jquery배열의 기능이 합쳐진거라 뒤에서 . 을 활용할수있다
			$("#one").text() 아무것도 전달하지 않으면 innerText 값을 읽어오는것이고 
			그 뒤에 . 을 활용해서 사용못한다
			
			let a =$("#one").text("ddddd");
			let b =$("#one").text();
			똑같은 동작명이더라도 인자를 전달한것은 값을 읽어오느냐 값을 넣어주느냐 
			대표적인 예 val()
			반대 동작의 개념으로 접근하자
			
			
			$("#inputMsg").attr() 속성에 관한 메소드
			속석을 넣어주거나 읽어오거나 둘중에 하나 어떤 속성의 값을 추가한다고 보면 키와 벨류 를 넣어주어야한다
			$("#inputMsg").attr("placeholder")  값을 읽어오는 동작
			$("#inputMsg").attr("placeholder","오잉") 값을 변경하는 동작
			
			$("#one").attr("style","color:red;");
			$("#one").css()
		*/
	</script>
</body>
</html>