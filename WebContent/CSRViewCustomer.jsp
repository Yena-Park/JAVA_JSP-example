<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="assign3.model.Customer" %>

<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Customer</title>  
</head>  
<body>  

  
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
			<div>
				<a href="ManageCustomerServlet">Customer List</a>
			</div>    
		</table>  
	</div>
</body>  
</html>  