<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	for(int i=1;i<=10;i++){
		out.print(i+"<br>");
	}
%>
<!-- jstl은 xml문법으 따름 -><></>로 시작과끝이 나야되고 단독태그에는 </>로 끝날것 -->
<c:forEach var="k" begin="1" end="10" step="1" varStatus="i">
	<!-- 가독성이 좋아서 이 방법을 많이 사용한다 함 -->
	<c:out value="${k}"/><br>
</c:forEach>
</body>
</html>