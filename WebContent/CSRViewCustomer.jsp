<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="assign3.model.Customer" %>

<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
	body {
		font-family: arial;
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
		Customer customer = (Customer) request.getAttribute("customer");  
	%>  
	<div>
		<h1>View Customer</h1>  
		<input type="hidden" name="customerId" value="<%=customer.getCustomerId() %>"/>  
		<table>  
			<tr><td>Last Name:</td><td>  
			<div><%=customer.getLastName()%></div>
			<tr><td>First Name:</td><td>  
			<div><%=customer.getFirstName()%></div>
			<tr><td>Last Name:</td><td>  
			<div><%=customer.getLastName()%></div>
			<tr><td>Address:</td><td>  
			<div><%=customer.getAddress()%></div>
			<tr><td>City:</td><td>  
			<div><%=customer.getCity()%></div>
			<tr><td>Postal Code:</td><td>  
			<div><%=customer.getPostalCode()%></div>
		</table>
		<div>
			<a href="ManageCustomerServlet">Customer List</a>
		</div>
	</div>
</body>  
</html>  