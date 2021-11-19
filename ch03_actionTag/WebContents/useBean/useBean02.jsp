<%@page import="com.dto.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- useBean을 이용한 빈 선언 MemberBean member = new MemberBean();-->
<jsp:useBean id="member" class="com.dto.MemberBean" scope="request"/>
<!-- member.setId(1999); member.setName("홍길동");-->
<jsp:setProperty property="id" name="member" value="2999"/>
<jsp:setProperty property="name" name="member" value="김길동"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%=member.getId() %><br> --%>
<jsp:getProperty property="id" name="member"/><br>
<%-- <%=member.getName() %> --%>
<jsp:getProperty property="name" name="member"/><br>
</body>
</html>