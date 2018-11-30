<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<style>
		div.head{
			width: 350px; height: 40px;
			background-color: #ddbe9f;
			color: #1c3f61;
			font-family: arial;
			font-size: 35px;
			font-weight: 900;
		}
		.button {
			background-color: #1c3f61;
			color: #ddbe9f;
			border: none;
	    }
	</style>
<title>Insert title here</title><!-- Customer 사이드 -->
</head>
	<div class="head">Information of Yours</div>
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
	</div>
	<div>
		<h3>Order Information</h3>
		<p>Order Id: </p>
		<p>Customer Id: </p>
		<p>Item Id: </p>
		<p>Order Date: </p>
		<p>Size: <button  class="button">Edit</button></p><!––이것만 Shoes table에서 가져오기-->
		<p>Quantity: <button class="button">Edit</button></p>
		<p>Status: </p>
	</div>
</body>
</html>