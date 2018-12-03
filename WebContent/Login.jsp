<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<style>
		body {
			font-family: arial;
		}
		#login_main {
			width: 960px;
			height: 50vh;
			margin: 0 auto;
			text-align:center;
		}
		p.head{
			color: #1c3f61;
			font-size: 35px;
			font-weight: 900;
		}
		.button {
			background-color: #1c3f61;
			color: #ddbe9f;
			border: none;
		}
		.topnav {
			overflow: hidden;
			background-color: #ddbe9f;
			height: 50px;
		}
			
		.topnav a {
			float: left;
			color: #f2f2f2;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
			font-size: 17px;
		}
			
		.topnav a:hover {
			background-color: #1c3f61;
			color: white;
		}
			
		.topnav a.active {
			background-color: #1c3f61;
			color: white;
		}
		.footer {
			overflow: hidden;
			background-color: #ddbe9f;
			height: 50px;
		}
	</style>
<title>Insert title here</title>
</head>
<body>
	<div class="topnav">
	</div>
	<div id="login_main">
		<p class="head">Shoe Shopping Mall</p>
		<form method="post" action="LoginController">
			<div>
				<input type="radio" id="customer" checked="checked" name="userType" value="Customer"/>
				<label>Customer</label>
				<input type="radio" id="CSR" name="userType" value="CSR"/>
				<label>CSR</label>
				<p> ID: <input type="text" id="userId" name="userId" /></p>
				<p>PW: <input type="password" id="userPw" name="userPw" /></p>
			</div>
			<button class="button" type="submit">Login</button>
		</form>
		<p>New User? <a href="RegisterForm.jsp">Click Here!</a></p><!--Hyperlink 걸어야함 -->
	</div>
	
	<div class="footer">
	</div>
</body>
</html>