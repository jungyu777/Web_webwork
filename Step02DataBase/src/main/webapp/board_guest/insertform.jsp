<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>/member/insertform.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
	<h1>리뷰 추가 폼</h1>
		<form action="insert.jsp" method="post">
		
			</div>
			<div class="mb-3">
				<label for="writer"  class="form-label">이름</label>
				<input class="form-control"  type="text" id="writer  " name="writer" />
			</div>
			<div class="mb-3">
				<label for="content  " class="form-label">리뷰</label>
				<textarea rows="content" cols="content  " id="content" name="content"></textarea>
			</div>
			
			<div class="mb-3">
				<label for="pwd"  class="form-label" >비밀번호</label>
				<input class="form-control"  type="text" id="pwd" name="pwd" />
			</div>
			
			<div class="mb-3">
				<label for="regdate"  class="form-label">방문날짜</label>
				<input class="form-control"  type="text" id="regdate" name="regdate" />
			</div>
			<button class="btn btn-success"  type="submit">추가</button>
		</form>
	</div>
</body>
</html>