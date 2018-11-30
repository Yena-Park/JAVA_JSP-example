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
<title>Insert title here</title>
</head>
<body>
	<p class="head">Manage Customer</p>
	<ul style="list-style-type:none"> <!--List로 할것이냐,table로 할것이냐  -->
		<li><input type="radio" id="user1" name="userList"/>Yena Park</li>
		<li><input type="radio" id="user2" name="userList"/>Ted Kim</li>
		<li></li>
	</ul>
	<button class="button">Edit</button>
	<button class="button">Delete</button>
</body>
</html>