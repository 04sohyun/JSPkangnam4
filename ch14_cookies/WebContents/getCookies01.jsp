<%@page import="java.net.URLDecoder"%>
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
	Cookie[] cookies = request.getCookies();
%>
쿠키목록<br>
<%
	if(cookies!=null && cookies.length>0){
		for(int i=0;i<cookies.length;i++){
%>
			<%=cookies[i].getName() %> = <%=URLDecoder.decode(cookies[i].getValue()) %><br>
<%			
		}
	}else{
%>
		쿠키가 존재하지 않습니다.
<%		
	}
%>
</body>
</html>