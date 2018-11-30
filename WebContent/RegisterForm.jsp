<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<style>
		/*Show and hide input based on customer type*/
		form input:nth-of-type(1) ~ div:nth-of-type(3) { display: none; }
		form input:nth-of-type(1):checked ~ div:nth-of-type(3) { display: block; }
		
		div.head{
			width: 310px; height: 40px;
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
<title>Insert title here</title>
</head>
<body>
	<br>
	<form name="" method="post" action="RegisterServlet">
		<div class="head">Registration Form</div><br><br>
		<input type="radio" checked="checked" id="customer" name="userType" value="Customer"/>
		<label><span>Customer</span></label>
		<input type="radio" id="CSR" name="userType" value="CSR"/>
		<label><span>CSR</span></label>
		<div class="common_input">
			<p>User Name: <input type="text" name="userName"/></p>
			<p>Password: <input type="text" name="passWord"/></p>
			<p>First Name: <input type="text" name="firstName"/></p>
			<p>Last Name: <input type="text" name="lastName"/></p>
		</div>
		<div class="customer_input">
			<p>Address: <input type="text" name="address"/></p>
			<p>City: <input type="text" name="city"/></p>
			<p>Postal Code: <input type="text" name="postalCode"/></p>
		</div><br>
		<button class="button" type="submit" name="register">Register</button>
	</form>
</body>
</html>