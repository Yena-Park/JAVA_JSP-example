<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="assign3.model.Customer" %>  
<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>  

	<jsp:include page="/common.jsp" />
  
	<%  
		Customer customer = (Customer) request.getAttribute("customer");  
	%>  

	<h1>Edit Customer</h1>  
	<form action="EditCustomerServlet" method="post">  
		<input type="hidden" name="customerId" value="<%=customer.getCustomerId() %>"/>  
		<table>
			<tr><td>User Name:</td><td>
			<input type="text" name="userName" value="<%=customer.getUserName()%>"/></td></tr>
			<tr><td>First Name:</td><td>  
			<input type="text" name="firstName" value="<%=customer.getFirstName()%>"/></td></tr>  
			<tr><td>Last Name:</td><td>  
			<input type="text" name="lastName" value="<%=customer.getLastName()%>"/></td></tr>  
			<tr><td>Password:</td><td>  
			<input type="password" name="password" value="<%=customer.getPassWord()%>"/></td></tr>  
			<tr><td>Address:</td><td>  
			<input type="text" name="address" value="<%=customer.getAddress()%>"/></td></tr>  
			<tr><td>City:</td><td>  
			<input type="text" name="city" value="<%=customer.getCity()%>"/></td></tr>  
			<tr><td>Postal Code:</td><td>  
			<input type="text" name="postalCode" value="<%=customer.getPostalCode()%>"/></td></tr>
			<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
			<tr><td colspan="2"><input type="submit" value="Cancel"/></td></tr>    
		</table>  
	</form>  
	  
</body>  
</html>  