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
	Date date = (Date)request.getAttribute("now");
	Integer b = (Integer)request.getAttribute("a");
	String str2 = (String)request.getAttribute("str");
	Integer year = (Integer)request.getAttribute("y");
	Integer month = (Integer)request.getAttribute("m");
	Integer date2 = (Integer)request.getAttribute("d");
%>
<h3>Today is :<%=date %></h3>
<%=b+"<br>"+str2 %>
<h4>Today is :<%=year+"/"+month+"/"+date2 %></h4>
</body>
</html>