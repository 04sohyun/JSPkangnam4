<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function checkForm(){alert("이름은 "+document.frm.name.value+"입니다.");}
function checkForm2(){alert("이름은 "+document.forms[1].name.value+"입니다.");}
function checkForm3(){alert("이름은 "+document.getElementById('name').value+"입니다.");}
</script>
<body>
<form name="frm"> <!-- action 지정 안해서 결과가 자기 자신한테 되돌아옴 -->
	<p> 이름:<input name="name">
	<input type="submit" vlaue="전송" onclick="checkForm()"><!-- onclick의 핸들러함수 checkForm() -->
</form>
<hr>
<!-- form 이름이 없는 경우 document.forms[index번호]로 접근 -->
<form >
	<p> 이름:<input name="name">
	<input type="submit" vlaue="전송" onclick="checkForm2()"><!-- onclick의 핸들러함수 checkForm() -->
</form>
<hr>
<!-- id는 document.getElementById(아이디명)로 접근 -->
<form >
	<p> 이름:<input id="name" name="name">
	<input type="submit" vlaue="전송" onclick="checkForm3()"><!-- onclick의 핸들러함수 checkForm() -->
</form>
</body>
</html>