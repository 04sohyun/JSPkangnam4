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
아이디 : <%=request.getParameter("id") %><br>
비밀번호 : <%=request.getParameter("pwd") %><br>
이름 : <%=request.getParameter("name") %><br>
연락처 : <%=request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"+request.getParameter("phone3") %><br>
도시 : <%=request.getParameter("city") %><br>
성별 : <%=request.getParameter("sex") %><br>
<%
	/* 동일 이름으로 두개 이상의 값이 전달되는 경우 getParameterValues()로 받음 */
	String[] hobbies = request.getParameterValues("hobby");
	String comment = request.getParameter("comment");
%>
취미 : <%=Arrays.toString(hobbies) %><br>
가입인사 : <%=comment %><br>
<%
for(int i=0;i<hobbies.length;i++){
		out.println(hobbies[i]);
}
%>

</body>
</html>