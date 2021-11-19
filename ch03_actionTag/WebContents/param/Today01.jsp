<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
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
	Date now = new Date();
%>
<jsp:forward page="printToday.jsp">
<jsp:param value="<%=now %>" name="now"/>
</jsp:forward>
</body>
</html>