<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 이 페이지는 first.jsp입니다. </h1>
<%-- 클라이언트의 요청을 현재페이지에서 처리하지 않고, 다른페이지로 이동처리하는 액션태그 forward
	 이동 시 현재페이지의 버퍼 내용을 버리고 이동 --%>
<jsp:forward page="second.jsp"/>
<p>===========================</p>
</body>
</html>