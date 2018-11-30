<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<style>
		p.head{
			background-color: #ddbe9f;
			color: #1c3f61;
			font-family: arial;
			font-size: 35px;
			font-weight: 900;
		}
		.button {
			background-color: #ddbe9f;
			color: #1c3f61;
			border: none;
	    }
	</style>
<title>Insert title here</title><!-- CSR 사이드 -->
</head>
<body>
	<jsp:include page="/common.jsp" />
	<p class="head"> Customer's Information</p>
	<div>
		<h3>Personal Information</h3>
		<p>Customer Id:</p>
		<p>User Name: </p>
		<p>Password: </p>
		<p>First Name: </p>
		<p>Last Name: </p>
		<p>Address: </p>
		<p>City: </p>
		<p>Postal Code: </p>
		<button class="button">Edit</button><!--Edit하면 모두다 수정 가능 -->
	</div>
	<div>
		<h3>Order Information</h3>
		<p>Order Id: </p>
		<p>Customer Id: </p>
		<p>Item Id: </p>
		<p>Order Date: </p>
		<p>Size: </p><!––이것만 Shoes table에서 가져오기-->
		<p>Quantity: </p>
		<p>Status: </p>
		<button class="button">Edit</button><!-- Edit하면 모두다 수정 가능 -->
	</div>
</body>
</html>