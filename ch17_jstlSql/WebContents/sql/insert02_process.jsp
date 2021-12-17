<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sql"  uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL sql</title>
</head>
<body>
<%
	/* 문자셋 설정 */
	request.setCharacterEncoding("utf-8");
	/* 파라미터 받기 */
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
%>
<%-- 데이터 소스 설정 --%>
<sql:setDataSource var="ds" url="jdbc:mysql://localhost:3306/webmarketDB"
	driver="com.mysql.cj.jdbc.Driver" user="root" password="1234"/>
<%-- update처리 preparedStatement, param전송 --%>	
<sql:update dataSource="${ds}" var="resulSet">
	insert into myMember(id, passwd, name) values(?,?,?)
	<sql:param value="<%=id%>"/>
	<sql:param value="<%=passwd%>"/>
	<sql:param value="<%=name%>"/>
</sql:update>	

<%-- 이동 경로 설정 --%>
<c:import url="sql01.jsp" var="url"/>
${url}
</body>
</html>