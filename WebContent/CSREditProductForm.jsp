<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="assign3.model.Shoe" %>
<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
<style>
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
	
</style>
</head>  
<body>  

	<jsp:include page="/common.jsp" />
  	
	<div id="main">
    <%  
		Shoe shoe = (Shoe) request.getAttribute("shoe");
		if(shoe.isNew) {
	%>
		<h1>Add New Shoe</h1>
		
	<%			
		} else  {
	%>
		<h1>Edit Shoe</h1>
	<%		
		}
	%>
		<form action="EditShoeController" method="post">  
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
				<%  
					if(shoe.isNew) {
				%>
					<tr><td colspan="2"><input type="submit" name="viewType" value="Add Shoe"/></td></tr>
				<%			
					} else  {
				%>
					<tr><td colspan="2"><input type="submit" name="viewType" value="Edit Shoe"/></td></tr>
				<%		
					}
				%>
				<tr><td colspan="2"><input type="submit" value="Cancel"/></td></tr>    
			</table>  
		</form> 
	</div>
</body>
</html>