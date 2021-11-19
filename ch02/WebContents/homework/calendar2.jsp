<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//시스템 날짜 가져오기
	Calendar cal = Calendar.getInstance();
	int y = cal.get(Calendar.YEAR);
	int m = cal.get(Calendar.MONTH)+1;//현재달 가져오기
	int d = cal.get(Calendar.DATE);
	
	//이 달의 1일로 설정-시작요일을 찾기위해
	cal.set(y,m-1,1);
	int w = cal.get(Calendar.DAY_OF_WEEK);//이달의 1일의 요일 = 2(월)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border=1>
  <tr>
  	<td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td>
  </tr>
  <%
  	/* 이달의 1일이 시작되는 전 날짜 공백채우기 */
  	out.print("<tr>");
  	for(int i=1;i<w;i++){
  		out.print("<td>&nbsp;</td>");
  	}
  	//1일부터 마지막 날짜까지 출력
	for(int i=1;i<=cal.getActualMaximum(Calendar.DATE);i++){
		out.print("<td>"+i+"</td>");
		w++;
		if(w%7==1 && i!=cal.getActualMaximum(Calendar.DATE)){//다음줄로 이동 처리
			out.print("</tr>");
			out.print("<tr>");
			for(int j=1;j<=7;j++){
				out.print("<td>&nbsp;</td>");
			}
			out.print("</tr>");
		}
	}
  	//뒷부분 공백처리
  	if(w%7!=1){
  		if(w%7==0){
  			out.print("<td>&nbsp;</td>");
  		}else{
  			for(int i=w%7;i<=7;i++){
  				out.print("<td>&nbsp;</td>");
  			}
  		
  		}
  		out.print("</tr>");
  		out.print("<tr>");
  		for(int i=1;i<=7;i++){
  			out.print("<td>&nbsp;</td>");
  		}
  	}
  	out.print("</tr>");
  %>
</table>
</body>
</html>