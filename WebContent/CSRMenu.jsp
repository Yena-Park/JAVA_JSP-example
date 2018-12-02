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
	</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/common.jsp" />
	<br>
	<p><button class="button"><a href="ManageProductServlet">Manage Product</a></button></p>
	<p><button class="button"><a href="ManageCustomerServlet">Manage Customer / Orders</a></button></p>
</body>
</html>