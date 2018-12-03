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

	#main {
		width: 960px;
		margin: 0 auto;
		text-align:center;
	}
	#main table {
		width: 60%;
		margin-left: 20%;
		margin-right: 20%;
	}
	#main img {
		width: 300px;
		height: 300px;
	}
</style>
<title>View Customer</title>  
</head>  
<body>
	<jsp:include page="/common.jsp" />  
	<%  
		Shoe shoe = (Shoe) request.getAttribute("shoe");  
	%>  
	<div id="main">
		<h1>View Product</h1>  
		<input type="hidden" name="itemId" value="<%=shoe.getItemId() %>"/>
		<img src="image/${shoe.itemName}.png"></img>  
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
			<a href="ManageProductController">Product List</a>
		</div> 
	</div>
</body>  
</html>  