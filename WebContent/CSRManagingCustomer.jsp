<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<style>
		#main {
			position: relative;
			overflow: hidden;
			width: 100%;
			text-align: center;
			margin: 0 auto;
		}
	
		p.head{
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
		body {
			font-family: arial;
		}
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
			width: 100px;
			height: 30px;
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
		table {
			width: 100%;
		}
	</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/common.jsp" /> <br><br>
	
	<div id="main">
		<form method="post" action="ManageCustomerController">
			<table>
				<tr>
					<th></th>
					<th>Customer Id</th>
					<th>User Name</th>
					<th>First Name</th>
					<th>Last Name</th>
				</tr>
				<c:forEach items="${customers}" var="customer">
					<tr>
						<td><input type="radio" checked="checked" name="customerId" value="${customer.customerId}"/></td>
						<td>${customer.customerId}</td>
						<td>${customer.userName}</td>
						<td>${customer.firstName}</td>
						<td>${customer.lastName}</td>
					</tr>
				</c:forEach>
			</table>
			
			<br>
		
			<input type="submit" name="button" value="View" class="button"/>
			<input type="submit" name="button" value="Edit" class="button"/>
			<input type="submit" name="button" value="Delete" class="button"/>
			<input type="submit" name="button" value="Manage Order" class="button"/>
		</form>
	</div>
</body>
</html>