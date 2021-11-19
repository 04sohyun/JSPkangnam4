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
<!-- Bean의 속성명과 Parameter로 넘어온 이름이 모두 같으면 "*" 사용 -->
<jsp:setProperty name="member" property="*"/>

<jsp:getProperty property="id" name="member"/><br>
<jsp:getProperty property="name" name="member"/><br>
</body>
</html>