<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("msg", "hello");
%>
<jsp:forward page="a.jsp">
	<jsp:param value="hello" name="msg"/>
</jsp:forward>
</body>
</html>