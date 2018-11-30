<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<style>
		div.head{
			width: 170px; height: 40px;
			background-color: #ddbe9f;
			color: #1c3f61;
			font-family: arial;
			font-size: 35px;
			font-weight: 900;
		}
		.button {
			width: 250px; height: 35px;
			background-color: #1c3f61;
			color: #ddbe9f;
			border: none;
			font-size: 25px;
	    }
	    .button a {
	    	color: #ddbe9f;
	    }
	</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/common.jsp" />
	<br>
	<div class="head">CSR Page</div><br><br>
	<p><button class="button"><a href="ManageProductServlet">Manage Product</a></button></p>
	<p><button class="button"><a href="ManageCustomerServlet">Manage Customer</a></button></p>
</body>
</html>