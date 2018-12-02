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
		div.head{
			width: 170px; height: 40px;
			background-color: #ddbe9f;
			color: #1c3f61;
			font-family: arial;
			font-size: 35px;
			font-weight: 900;
		}
		.button {
			width: 340px; height: 35px;
			background-color: #1c3f61;
			color: #ddbe9f;
			border: none;
			font-size: 25px;
	    }
	    .button a {
	    	color: #ddbe9f;
	    }
	    .topnav {
			overflow: hidden;
			background-color: #ddbe9f;
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
	</style>
<title>Insert title here</title>
</head>
<body>
	<div class="topnav">
	  <a class="active" href="#">CSR Page</a>
	  <a href="#men">Men</a>
	  <a href="#women">Women</a>
	  <a href="#kid">Kid</a>
	</div><br>
	<jsp:include page="/common.jsp" />
	<br>
	<p><button class="button"><a href="ManageProductServlet">Manage Product</a></button></p>
	<p><button class="button"><a href="ManageCustomerServlet">Manage Customer / Orders</a></button></p>
</body>
</html>