<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="assign3.model.Shoe" %>

<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
	body {
		font-family: arial;
	}
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
<title>View Customer</title>  
</head>  
<body>  
	<div class="topnav">
	  <a class="active" href="#">CSR Page</a>
	  <a href="#men">Men</a>
	  <a href="#women">Women</a>
	  <a href="#kid">Kid</a>
	</div><br>
	<jsp:include page="/common.jsp" />  
	<%  
		Shoe shoe = (Shoe) request.getAttribute("shoe");  
	%>  
	<div>
		<h1>View Product</h1>  
		<input type="hidden" name="itemId" value="<%=shoe.getItemId() %>"/>  
		<table>  
			<tr><td>Item Name:</td><td>  
			<div><%=shoe.getItemName()%></div>
			<tr><td>Category:</td><td>  
			<div><%=shoe.getCategory()%></div>
			<tr><td>Shoe Size:</td><td>  
			<div><%=shoe.getShoeSize()%></div>
			<tr><td>Price:</td><td>  
			<div><%=shoe.getPrice()%></div>   
		</table>
		<div>
			<a href="ManageProductServlet">Product List</a>
		</div> 
	</div>
</body>  
</html>  