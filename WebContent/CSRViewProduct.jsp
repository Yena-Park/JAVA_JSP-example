<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="assign3.model.Shoe" %>

<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Customer</title>  
</head>  
<body>  

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
			<div>
				<a href="ManageProductServlet">Product List</a>
			</div>    
		</table>  
	</div>
</body>  
</html>  