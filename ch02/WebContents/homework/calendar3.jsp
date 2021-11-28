<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//시스템 날짜 가져오기
	Calendar cal = Calendar.getInstance();
	int y = cal.get(Calendar.YEAR);
	int m = cal.get(Calendar.MONTH)+1;
	int d = cal.get(Calendar.DATE);
	
	//이 달의 1일의 요일 설정
	cal.set(y,m-1,1);
	int w = cal.get(Calendar.DAY_OF_WEEK);
%>   
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="jumbotron">
	<div class="container">
		<h1 align="center"><i class="fa fa-calendar"></i>&nbsp;11월&nbsp;
		<span class="badge badge-pill badge-secondary" style="font-family:'Nanum Myeongjo';">November</span></h1>
	</div>
</div>

<div class="container">
<table class="table table-borderless table-striped" >
	<thead class="thead-light">
	<tr>
		<th class="text-danger">일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th>
	</tr>
	</thead>
	<tbody>
	<%
		//이달의 1일전까지 공백처리
		out.print("<tr>");
		for(int i=1;i<w;i++){
			out.print("<td>&nbsp;</td>");
		}
		//1일부터 마지막 날까지 출력
		for(int i=1;i<=cal.getActualMaximum(Calendar.DATE);i++){
			out.print("<td>"+i+"</td>");
			w++;
			if(w%7==1 && i!=cal.getActualMaximum(Calendar.DATE)){
				out.print("</tr>");
				out.print("<tr height='100'>");
				for(int j=1;j<=7;j++){
					out.print("<td>&nbsp;</td>");
				}
					out.print("</tr>");
			}
		}
		//뒷부분 공백처리
		if(w%7!=1){
			for(int i=w%7;i<=7;i++){
				out.print("<td>&nbsp;</td>");
			}
		}
		out.print("<tr height='100'>");
		for(int i=1;i<=7;i++){
			out.print("<td>&nbsp;</td>");
		}
		out.print("</tr>");
	%>
	</tbody>
</table>
</div>
<hr>
<footer class="container">
	<p>&copy; Calendar by sohyun</p>
</footer>
</body>
</html>