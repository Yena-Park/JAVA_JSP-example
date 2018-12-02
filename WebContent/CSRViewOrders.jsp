<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="assign3.model.Customer" %>
<%@ page import="assign3.model.Order" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<style>
		p.head{
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
	<title>Order Infomation</title>
</head>
<body>
	<div class="topnav">
	  <a class="active" href="#">CSR Page</a>
	  <a href="#men">Men</a>
	  <a href="#women">Women</a>
	  <a href="#kid">Kid</a>
	</div><br>
	<jsp:include page="/common.jsp" />
	
	<p class="head"> Customer's Information</p>
	<%  
		Customer customer = (Customer) request.getAttribute("customer");  
	%>  
	<div>
		<h2>Personal Information</h2>  
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
	</div>
	  
	<div>
		<h2>Order Information</h2>
		<table>
			<tr>
				<th></th>
				<th>Order Id</th>
				<th>Item Id</th>
				<th>Quantity</th>
				<th>Order Date</th>
				<th>Status</th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach items="${orders}" var="order">
				<tr>
					<td><input type="radio" name="itemId" value="${shoe.itemId}"/></td>
					<td>${order.orderId}</td>
					<td>${order.itemId}</td>
					<td>${order.quantity}</td>
					<td>${order.orderDate}</td>
					<td>${order.status}</td>
					<td><button class="button">Edit</button></td>
					<td><button class="button">Cancel</button></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>