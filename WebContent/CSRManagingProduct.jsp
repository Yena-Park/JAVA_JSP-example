<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">	
<style>
	body {
		font-family: arial;
	}
	#main {
		position: relative;
		overflow: hidden;
		width: 100%;
		text-align: center;
		margin: 0 auto;
	}
	div.head{
		width: 310px; height: 40px;
		background-color: #ddbe9f;
		color: #1c3f61;
		font-family: arial;
		font-size: 35px;
		font-weight: 900;
	}
	table {
		width: 100%;
	}
	.button {
		background-color: #ddbe9f;
		color: #1c3f61;
		width: 100px;
		height: 30px;
		border: none;
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
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/common.jsp" /><br><br>

	<div id="main">
		<form method="post" action="ManageProductController">
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
						<td><input type="radio" checked="checked" name="itemId" value="${shoe.itemId}"/></td>
						<td>${shoe.itemId}</td>
						<td>${shoe.itemName}</td>
						<td>${shoe.category}</td>
						<td>${shoe.shoeSize}</td>
						<td>${shoe.price}</td>
					</tr>
				</c:forEach>
			</table>
			
			<br>
		
			<input type="submit" name="button" value="View" class="button"/>
			<input type="submit" name="button" value="Add" class="button"/>
			<input type="submit" name="button" value="Edit" class="button"/>
			<input type="submit" name="button" value="Delete" class="button"/>
		</form>
	</div>
</body>
</html>