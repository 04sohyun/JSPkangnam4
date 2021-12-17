<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<%
	String number = request.getParameter("number");
%>
<c:set var="number" value="<%=number %>" />
<c:choose>
	<c:when test="${number % 2 == 0}">
		<c:out value="${number}"></c:out>은 짝수입니다.	
	</c:when>
	<c:when test="${number% 2 != 0}">
		<c:out value="${number}"></c:out>은 홀수입니다.
	</c:when>
	<c:otherwise>
		숫자가 아닙니다.
	</c:otherwise>
</c:choose>


<c:if test="${param.number%2==0}">
	${param.number}는 짝수입니다.
</c:if>
<c:if test="${param.number%2!=0}">
	${param.number}는 홀수입니다.
</c:if>
</body>
</html>