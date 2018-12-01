<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="assign3.model.Shoe" %>
<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>  

	<jsp:include page="/common.jsp" />
  
	<%  
		Shoe shoe = (Shoe) request.getAttribute("shoe");  
	%>  
	<h1>Edit Shoe</h1>  
	<form action="EditShoeServlet" method="post">  
		<input type="hidden" name="itemId" value="<%=shoe.getItemId() %>"/>  
		<table>
			<tr><td>Item Name:</td><td>
			<input type="text" name="itemName" value="<%=shoe.getItemName()%>"/></td></tr>
			<tr><td>Category:</td><td>  
			<input type="text" name="category" value="<%=shoe.getCategory()%>"/></td></tr>  
			<tr><td>Item Size:</td><td>  
			<input type="text" name="shoeSize" value="<%=shoe.getShoeSize()%>"/></td></tr>  
			<tr><td>Price:</td><td>  
			<input type="text" name="price" value="<%=shoe.getPrice()%>"/></td></tr>  
			<tr><td colspan="2"><input type="submit" value="Edit Shoe"/></td></tr>  
			<tr><td colspan="2"><input type="submit" value="Cancel"/></td></tr>    
		</table>  
	</form> 
</body>
</html>