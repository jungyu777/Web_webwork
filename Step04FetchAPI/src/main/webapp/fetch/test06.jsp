<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/fetch/test06</title>
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
        .then(res=>res.json())//서버에서 응답한 문자열이 json형식이면 res.json() 으로 바꿔준다. 
        .then((data)=>{//위에있는 res.json이 바로 제이슨 문자열로 변환해줘서 data가 배열이다
        	//data는 ["어쩌구","저쩌구","이렇쿤"]
        	console.log(data);
        
        	for(let i=0;i<data.length;i++){
        		//backtick을 활용해서 li dksdp aptpwlfmf cnffurgkrh
				let li = `<li>\${data[i]}</li>`;
				//ul 이 끝나기 전에 직전에 HTML 로 평가해서 추가하기
				document.querySelector("#msglist").insertAdjacentHTML("beforeend",li);
        	}
        	
        })
        .catch((err)=>{
        	//err 에는 에러 메세지가 들어 있다.
        	console.log(err);
        })
        
      });
   </script>
</body>
</html>

