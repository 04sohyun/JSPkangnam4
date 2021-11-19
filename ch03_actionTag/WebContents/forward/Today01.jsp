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
	int a = 250;
	String str = "hello";
	
	Calendar cal = Calendar.getInstance();
	int y = cal.get(Calendar.YEAR);
	int m = cal.get(Calendar.MONTH);
	int d = cal.get(Calendar.DATE);
%>
<%
	/* "now"라는 이름으로 now객체가 Object타입으로 형 변환 후 저장 */
	request.setAttribute("now", now);
	request.setAttribute("a", a);
	request.setAttribute("str", str);
	request.setAttribute("y", y);
	request.setAttribute("m", m);
	request.setAttribute("d", d);
%>
<jsp:forward page="printToday.jsp"></jsp:forward>
</body>
</html>