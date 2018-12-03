<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="assign3.model.Customer" %>
<%@ page import="assign3.model.Order" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/common.jsp" />
	<% 
		Customer customer = (Customer) request.getAttribute("customer");
	%>
	<div>
		<h2>My Information</h2>  
		<input type="hidden" name="customerId" value="<%=customer.getCustomerId() %>"/>  
		<table id="table_person">  
			<tr><td>User Name:</td><td>  
			<div><%=customer.getUserName()%></div>
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
		<h2><%=customer.getUserName()%>'s Order Information</h2>
		<table id="table_order">
			<tr>
				<th>Order Id</th>
				<th>Item Id</th>
				<th>Order Date</th>
				<th>Status</th>
				<th>Quantity</th>
				<th></th>
			</tr>
			<c:forEach items="${orders}" var="order">
				<form method="post" action="OrderController">
					<input type="hidden" name="orderId" value="${order.orderId}"/>
					<input type="hidden" name="customerId" value="${order.customerId}"/>
					<tr>
						<td>${order.orderId}</td>
						<td>${order.itemId}</td>
						
						<td>${order.orderDate}</td>
						<td>${order.status}</td>
						
						<c:choose>
						    <c:when test="${order.status eq 'ordered'}">
						        <td>
						        	<input type="text" name="quantity" value="${order.quantity}"/>
						        </td>
						        <td>
						        	<input type="hidden" name="jsp" value="CUSTMyPage"/>
									<input type="submit" name="submit" value="Edit Order"/>
									<input type="submit" name="submit" value="Cancel & Delete Order"/>
								</td>
						    </c:when>    
						    <c:otherwise>
								<td>${order.quantity}</td>
								<td>
								</td>
						    </c:otherwise>
						</c:choose>
						
					</tr>
				</form>
			</c:forEach>
		</table>
	</div>
</body>
</html>