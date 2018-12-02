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
	
		#main {
			margin: 0 auto;
			text-align: center;
		}
		
		#main #table_order {
			width: 80%;
			margin-left: 10%;
		}
		#main #table_person {
			width: 80%;
		}
		
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
	</style>
	<title>Order Infomation</title>
</head>
<body>
	<jsp:include page="/common.jsp" />
	<div id="main">
		<p class="head"> Customer's Information</p>
		<%  
			Customer customer = (Customer) request.getAttribute("customer");  
		%>  
		<div>
			<h2>Personal Information</h2>  
			<input type="hidden" name="customerId" value="<%=customer.getCustomerId() %>"/>  
			<table id="table_person">  
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
			<table id="table_order">
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
	</div>
</body>
</html>