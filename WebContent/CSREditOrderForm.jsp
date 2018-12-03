<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="assign3.model.Order" %>
<%@ page import="assign3.model.Customer" %>
<%@ page import="assign3.model.Shoe" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#main {
		width: 960px;
		margin: 0 auto;
		text-align:center;
	}
	#main table {
		width: 60%;
		margin-left: 15%;
	}
	
</style>
</head>
<body>
	<jsp:include page="/common.jsp" />
  	
	<div id="main">
	    <%  
			Order order = (Order) request.getAttribute("order");
	    	Shoe shoe = (Shoe) request.getAttribute("shoe");
	    	Customer customer = (Customer) request.getAttribute("customer");
		%>
		<h1>Manage Order</h1>
		
		<h3>Order <%=order.getOrderId() %> Information</h3>
		<form action="EditOrderController" method="post">
			<input type="hidden" name="orderId" value="<%=order.getOrderId() %>"/>
			<input type="hidden" name="customerId" value="<%=order.getCustomerId() %>"/>
			<table>  
				<tr>
					<td>Order:</td>
					<td>
						<select name="status">
							<%
								if(order.getStatus().equals("ordered")) {
									out.println("<option selected=\"selected\" value=\"ordered\">ordered</option>");
								} else {
									out.println("<option value=\"ordered\">ordered</option>");								
								}
								if(order.getStatus().equals("processing")) {
									out.println("<option selected=\"selected\" value=\"processing\">processing</option>");
								} else { 
									out.println("<option value=\"processing\">processing</option>");	
								}
								if(order.getStatus().equals("completed")) {
									out.println("<option selected=\"selected\" value=\"completed\">completed</option>");
								} else {
									out.println("<option value=\"completed\">completed</option>");	
								}
								if(order.getStatus().equals("canceled")) {
									out.println("<option selected=\"selected\" value=\"canceled\">canceled</option>");
								} else {
									out.println("<option value=\"canceled\">canceled</option>");	
								}
							%>
					  	</select>
					</td>
				</tr>
				<tr>
					<td>Order Date:</td>
					<td>
						<div><%=order.getOrderDate()%></div>
					</td>
				</tr>
				<tr>
					<td>Order Quantity:</td>
					<td>
						<div><%=order.getQuantity()%></div>  
					</td>
				</tr>
				<tr>
					<td>Customer Name:</td>
					<td>  
						<div><%=customer.getFirstName()%> <%=customer.getLastName()%></div>
					</td>
				</tr>
				<tr>
					<td>Item Name:</td>
					<td>  
						<div><%=shoe.getItemName()%></div>
					</td>
				</tr>
				<tr>
					<td>Item Size:</td>
					<td>  
						<div><%=shoe.getShoeSize()%></div>
					</td>
				</tr>
				<tr>
					<td>Item Price:</td>
					<td>  
						<div><%=shoe.getPrice()%></div>
					</td>
				</tr>
				<tr>
					<td>Total Price:</td>
					<td>  
						<div><%=shoe.getPrice() * order.getQuantity()%></div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" name="button" value="Edit Order"/>
						<input type="submit" name="button" value="Delete Order"/>
						<input type="submit" name="button" value="Cancel"/>
					</td>
				</tr>
			</table>
		</form>  
	</div>
</body>
</html>