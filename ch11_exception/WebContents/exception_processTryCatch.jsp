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
	try{
		int num = 10/0; /* 오류발생 코드 */
	}catch(Exception e){
		/* try{}블럭에서 예외 발생하였지만 catch{}블럭에서 예외 처리하여 정상이동인 것처럼 error.jsp페이지로 이동 */
		//forward전에 rerquest에 "exception"이름으로 Exception을 전달
		request.setAttribute("exception", e);
		
		/* forward시킬 객체 생성(RequestDispatcher)
		   request객체의 getRequestDispatcher('forward할 페이지')로 지정*/
		RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
		//이동처리
		dispatcher.forward(request, response);		
	}
%>
</body>
</html>