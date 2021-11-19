<%@page import="java.util.Arrays"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<!-- 넘어온 파라미터 출력하기 -->
<jsp:useBean id="member" class="dto.Member" scope="session"/>
<jsp:setProperty property="*" name="member"/>
<b><%=member %></b>
</body>
</html>