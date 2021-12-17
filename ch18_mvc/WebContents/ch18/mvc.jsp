<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mvc 로그인</title>
</head>
<!-- action경로 상대경로, 같은폴더경로로 호출 -->
<body>
<form method="post" action="Controllerservlet">
	<p>아이디:<input name="id">
	<p>비밀번호:<input type="password" name="passwd">
	<p><input type="submit" value="보내기">
</form>
</body>
</html>