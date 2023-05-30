<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/fetch/test04</title>
</head>
<body>
  <button id="moreBtn">더 보기</button>
  <ul id="msglist">
  	<li>하나</li>
  	<li>두울</li>
  	<li>세엣</li>
  </ul>
   <script>
      //문자열을 입력하고 전송 버튼을 눌렀을때 입력한 문자열을 읽어와서 send.jsp 페이지로 전송이 되도록 하기
      document.querySelector("#moreBtn").addEventListener("click", ()=>{
        fetch("get_msg2.jsp")
        .then(res=>res.text())
        .then((data)=>{
        	//data 는 json 형식의 배열이다
        	console.log(data);
        	//실제 배열(object) 로 바꾸기 로 바꾸기 (json 형식에 어긋나면 에러가 발생한다)
        	const list=JSON.parse(data);
        	
        	for(let i=0;i<list.length;i++){
        		let li=document.createElement("li");
            	li.innerText=list[i];
            	document.querySelector("#msglist").append(li);
        	}
        	
        });
      });
   </script>
</body>
</html>

