<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예제 파일</title>
<style>
/* 전체 */
body{margin:0;}
a{color:#000; text-decoration:none;}
#wrap{width:960px; background:#ccc; position:relative; left:50%; margin-left:-480px;}
#header{background:#eee; padding:20px;}
#header .logo{float:left;}
#content{padding:20px;}
#footer{background:#000; height:50px; text-align:center; padding:20px;}
#footer span{color:#fff;}
#loginForm{position:relative; width:50%; border:1px solid #999; margin:0 auto; padding:20px;}
#loginForm label{display:block; width:80px;}
#loginForm input{width:96%;}
#loginForm input[type="text"], #loginForm input[type="password"]{
padding:2%; color:#666; border:none; border-right:1px solid #999; border-bottom:1px solid #999;
}
#loginForm input[type="checkbox"]{width:5%;}
#loginForm input[type="submit"]{width:100%;/*부모요소 너비*/ background:#559; border:none; color:#fff; padding:10px;}
#loginForm input[type="submit"]:hover{background:#99c; cursor:pointer;}

</style>
</head>
<body>
<div id="wrap">
<div id="header">
	<span class="logo"><img src="img/logo.png" alt="사이트로그"></span>
	<h1>css활용</h1>
	<h2>로그인폼</h2>
</div>
<div id="content">
<form action="out03_process.jsp" method="post" id="loginForm">
 <h3>로그인</h3>
 <p><label>아이디</label>
 <input name="id" id="idname">
 <p><label>비밀번호</label>
 <input type="password" name="pwd" id="pw">
 
 <p>
 <input type="checkbox" id="checkbox" name="chkbox">
 <span>기억하기</span>
 
 <p>
 <input type="submit" value="전송" id="checkbox">
</form>
</div>
<div id="footer">
	<span>2015.css활용강좌 All rights reserved.</span>
</div>
</div>
</body>
</html>