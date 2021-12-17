<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Calendar cal = Calendar.getInstance();
	int y = cal.get(Calendar.YEAR);
	int m = cal.get(Calendar.MONTH)+1;
	int d = cal.get(Calendar.DATE);
	
	cal.set(y,m-1,1);
	int w = cal.get(Calendar.DAY_OF_WEEK);
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<select>
	<%
		for(int i=y-5;i<y;i++){
	%>
			<option><%=i %>년</option>			
	<%		
		}
	%>
			<option selected><%=y %>년</option>
	<%
		for(int i=y+1;i<y+5;i++){
	%>
			<option><%=i %>년</option>
	<%		
		}
	%>		
</select>
<select>	
	<%
		for(int i=1;i<=12;i++){
	%>
			<option <%=m==i?"selected":"" %>><%=i %>월</option>
	<%		
		}
	%>
</select>		
<table border=1>
	<tr>
		<td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td>
	</tr>
	<%
		out.print("<tr>");
		for(int i=1;i<w;i++){
			out.print("<td>&nbsp;</td>");
		}
	
		for(int i=1;i<=cal.getActualMaximum(Calendar.DATE);i++){
			out.print("<td>"+i+"</td>");	
			w++;
			if(w%7==1 && i!=cal.getActualMaximum(Calendar.DATE)){
				out.print("</tr>");
				out.print("<tr>");
				for(int j=1;j<=7;j++){
					out.print("<td>&nbsp;</td>");
				}
				out.print("</tr>");
				out.print("<tr>");
			}
		}
		if(w%7!=1){
			for(int i=w%7;i<=7;i++){
				out.print("<td>&nbsp;</td>");
			}
		}
		out.print("</tr>");
		out.print("<tr>");
		for(int i=1;i<=7;i++){
			out.print("<td>&nbsp;</td>");
		}
		out.print("</tr>");
	%>
</table>	
</body>
</html>