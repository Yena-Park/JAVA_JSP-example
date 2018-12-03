<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="assign3.model.Customer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#main {
		position: relative;
		overflow: hidden;
		top: 20px;
		width: 100%;
	}
	#main #main_tab {
		background-color: white;
	}

	/* First tab */
	#main input:nth-of-type(1)#men { display: none; }
	#main input:nth-of-type(1) ~ div#men  { display: none; }
	#main input:nth-of-type(1):checked ~ div#men  { display: block; }
	
	#main input:nth-of-type(2)#women { display: none; }
	#main input:nth-of-type(2) ~ div#women  { display: none; }
	#main input:nth-of-type(2):checked ~ div#women  { display: block; }
	
	#main input:nth-of-type(3)#kid { display: none; }
	#main input:nth-of-type(3) ~ div#kid  { display: none; }
	#main input:nth-of-type(3):checked ~ div#kid { display: block; }
	
	section.buttons { overflow: hidden; }
	section.buttons > label {
		display: block; float: left;
		
		width: 320px; height: 30px;
		line-height: 30px;
		text-align: center;
		
		box-sizing: border-box;
		border: 1px solid black;
		
		background: black;
		color: white;
	}
	#main input:nth-of-type(1):checked ~ section.buttons > label:nth-of-type(1) {
		background: white;
		color: black; 
	}
	#main input:nth-of-type(2):checked ~ section.buttons > label:nth-of-type(2) { 
		background: white;
		color: black;
	}
	#main input:nth-of-type(3):checked ~ section.buttons > label:nth-of-type(3) {
		background: white;
		color: black;
	}
	
	.items {
		position: relative;
		display: block;
	}
	
	.items li {
	 	list-style-type: none;
	 	text-align: left;
	}
	
	.item {
		width: 300px;
		height: 400px;
		float: left;
		text-align: center;
	}
	
	.item img {
		width: 265px;
		height: 165px;
	}
	
	.tab_item button {
		width: 100px;
		height: 30px;
	}
	
	.item_desc {
		position: relative;
		text-align: center;
	}
	
	</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/common.jsp" />
	
	<div id="main">
		<div id="main_tab">
		<%
			Customer customer = (Customer)session.getAttribute("currentCustomer");
		%>
			<input type="radio" id="men" checked="checked" name="tab" value="Men"/>
			<input type="radio" id="women" name="tab" value="Women"/>
			<input type="radio" id="kid" name="tab" value="Kid"/>
			<section class="buttons">
				<label for="men">Men</label>
				<label for="women">Women</label>
				<label for="kid">Kid</label>
			</section>
			<br><br><br>
			<div class="tab_item" id="men">
				<ul class="items">
					<c:forEach items="${menShoes}" var="shoe">
						<li class="item">
							<form method="post" action="OrderController">
								<input type="hidden" name="jsp" value="CUSTWelcome">
								<%
									if(customer != null) {
										out.println("<input type=\"hidden\" name=\"customerId\" value=\""+customer.getCustomerId()+"\"/>");		
									}
								%>
								<input type="hidden" name="itemId" value="${shoe.itemId}">
								<div class="item_desc">
									<img src="image/${shoe.itemName}.png"></img>
									<p>${shoe.itemName}</p>
									<p>size: ${shoe.shoeSize}</p>
									<p>price: $ ${shoe.price}</p>
									<input type="submit" value="Order">
								</div>
							</form>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="tab_item" id="women">
				<ul class="items">
					<c:forEach items="${womenShoes}" var="shoe">
						<li class="item">
							<form method="post" action="OrderController">
								<input type="hidden" name="jsp" value="CUSTWelcome">
								<%
									if(customer != null) {
										out.println("<input type=\"hidden\" name=\"customerId\" value=\""+customer.getCustomerId()+"\"/>");		
									}
								%>
								<input type="hidden" name="itemId" value="${shoe.itemId}">
								<div class="item_desc">
									<img src="image/${shoe.itemName}.png"></img>
									<p>${shoe.itemName}</p>
									<p>size: ${shoe.shoeSize}</p>
									<p>price: $ ${shoe.price}</p>
									<input type="submit" value="Order">
								</div>
							</form>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="tab_item" id="kid">
				<ul class="items">
					<c:forEach items="${kidShoes}" var="shoe">
						<li class="item">
							<form method="post" action="OrderController">
								<input type="hidden" name="jsp" value="CUSTWelcome">
								<%
									if(customer != null) {
										out.println("<input type=\"hidden\" name=\"customerId\" value=\""+customer.getCustomerId()+"\"/>");		
									}
								%>
								<input type="hidden" name="itemId" value="${shoe.itemId}">
								<div class="item_desc">
									<img src="image/${shoe.itemName}.png"></img>
									<p>${shoe.itemName}</p>
									<p>size: ${shoe.shoeSize}</p>
									<p>price: $ ${shoe.price}</p>
									<input type="submit" value="Order">
								</div>
							</form>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<br>
</body>
</html>