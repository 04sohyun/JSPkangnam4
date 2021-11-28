<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>i18n</title>
</head>
<body>
<p>----fmt:bundle----
<fmt:setLocale value="en"/>
<fmt:bundle basename="ch09.com.bundle.myBundle">
	<p>제목:<fmt:message key="title" var="title"/>
		  ${title}	
	<p><fmt:message key="username" var="username"/>
		이름:${username }
	<p><fmt:message key="password" var="pwd"/>
		비밀번호:${pwd }	
</fmt:bundle>
</body>
</html>