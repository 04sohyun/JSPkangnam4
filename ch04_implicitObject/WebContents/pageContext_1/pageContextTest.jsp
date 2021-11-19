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
	/* pageContext - 다른 기본 객체에 대한 접근 메소드 제공 */
	pageContext.getRequest().setAttribute("msg", "hello");
	pageContext.getOut().print("pageContext<br>");
	pageContext.getResponse();
	pageContext.getSession();
	pageContext.getServletContext(); //application 접ㅈ근
	pageContext.getServletConfig();
	pageContext.getPage();
%>
<%=request.getAttribute("msg") %>
</body>
</html>