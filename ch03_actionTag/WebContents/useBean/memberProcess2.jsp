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
<jsp:useBean id="member" class="com.dto.MemberBean"/>
<!-- Bean의 속성명과 Parameter명이 다르면 param속성에 파라미터명을 지정 -->
<jsp:setProperty name="member" property="id" param="userid"/>
<jsp:setProperty name="member" property="name"/>

<jsp:getProperty property="id" name="member"/><br>
<jsp:getProperty property="name" name="member"/><br>
</body>
</html>