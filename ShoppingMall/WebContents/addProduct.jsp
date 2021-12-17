<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
</head>
<body>
<fmt:setLocale value='<%=request.getParameter("language") %>'/>
<fmt:bundle basename="resourceBundle.message">
<%@ include file="menu.jsp" %>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3"><fmt:message key="title"/></h1>
	</div>
</div>
<div class="container">
	<div class="text-right">
		<a href="?language=ko">Korean</a>|<a href="?language=en">English</a>
	</div>
	<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="productId"/></label>
			<div class="col-sm-3">
				<input name="productId" id="productId" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="pname"/></label>
			<div class="col-sm-3">
				<input name="name" id="name" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
			<div class="col-sm-3">
				<input name="unitPrice" id="unitPrice" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="description"/></label>
			<div class="col-sm-3">
				<textarea name="description" rows="2" cols="50" class="form-control"></textarea>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="manufacturer"/></label>
			<div class="col-sm-3">
				<input name="manufacturer" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="category"/></label>
			<div class="col-sm-3">
				<input name="category" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="unitsInStock"/></label>
			<div class="col-sm-3">
				<input name="unitsInStock" id="unitsInStock" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="condition"/></label>
			<div class="col-sm-5">
				<input type="radio" name="condition" value="New "><fmt:message key="condition_New"/>
				<input type="radio" name="condition" value="Old "><fmt:message key="condition_Old"/>
				<input type="radio" name="condition" value="Refurbished "><fmt:message key="condition_Refurbished"/>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="productImage"/></label>
			<div class="col-sm-5">
				<input type="file" name="productImage" class="">
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="button" onclick="checkAddProduct()" class="btn btn-primary" value="<fmt:message key="button"/>">
			</div>
		</div>
	</form>
  </fmt:bundle>
</div>
</body>
</html>