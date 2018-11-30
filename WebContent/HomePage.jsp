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
			background-color: #1c3f61;
			color: #ddbe9f;
			border: none;
	    }
	</style>
<title>Insert title here</title>
</head>
<body>
	<p class="head">Shoe Shopping Mall</p>
	<div>
	<input type="radio" id="customer" name="userType"/>
	<label>Customer</label>
	<input type="radio" id="CSR" name="userType"/>
	<label>CSR</label>
		<p> ID: <input type="text" id="userId" name="userId" /></p>
		<p>PW: <input type="password" id="userPw" name="userPw" /></p>
	</div>
	<button class="button">Enter</button>
	<p>New User? <a href="RegisterForm.jsp">Click Here!</a></p><!--Hyperlink 걸어야함 -->
</body>
</html>