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
	<h1>할일 추가 폼</h1>
		<form action="insert.jsp" method="post">
			<div class="mb-3">
				<label for="name"  class="form-label">할일</label>
				<input class="form-control"  type="text" id="name" name="name" />
			</div>
			<div class="mb-3">
				<label for="addr"  class="form-label">주소</label>
				<input class="form-control"  type="text" id="addr" name="addr" />
			</div>
			<button class="btn btn-success"  type="submit">추가</button>
		</form>
	</div>
</body>
</html>