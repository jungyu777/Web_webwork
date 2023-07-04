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
	<p>p1</p>
	<p id="one">p2</p>
	<p id="two">p3</p>
	<!-- jquery로딩하고 플러그인 자바스크립트 로딩하면 jquery 확장 가능 -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<script src="js/jquery.gura.js"></script>
<script>
	
	//jquery 의 기능을 확장하기(plugin)
	/*	
		오직 한번만 call할거면 (function(){})();
	*/
	

	
	$("#one").gura();
	$("#two").gura({
		msg:"졸려"
	})
</script>

</body>
</html>