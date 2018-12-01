<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">	<style>
	div.head{
			width: 310px; height: 40px;
			background-color: #ddbe9f;
			color: #1c3f61;
			font-family: arial;
			font-size: 35px;
			font-weight: 900;
	}
	.button {
		background-color: #ddbe9f;
		color: #1c3f61;
		border: none;
	}
	</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/common.jsp" />
	<p class="head">Manage Product</p>
	<form method="post" action="ManageProductServlet">
		<table>
			<tr>
				<th></th>
				<th>Shoe Id</th>
				<th>Product Name</th>
				<th>Category</th>
				<th>shoeSize</th>
				<th>price</th>
			</tr>
			<c:forEach items="${shoes}" var="shoe">
				<tr>
					<td><input type="radio" name="customerId" value="${customer.customerId}"/></td>
					<td>${shoe.itemId}</td>
					<td>${shoe.itemName}</td>
					<td>${shoe.category}</td>
					<td>${shoe.shoeSize}</td>
					<td>${shoe.price}</td>
				</tr>
			</c:forEach>
		</table>
	
		<input type="submit" name="button" value="View" class="button"/>
		<input type="submit" name="button" value="Edit" class="button"/>
		<input type="submit" name="button" value="Delete" class="button"/>
	</form>
</body>
</html>