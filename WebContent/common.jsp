<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import="assign3.model.Customer" %>
<%@ page import="assign3.model.CSR" %>

<style>
	body {
		font-family: arial;
		width: 960px;
		margin: 0 auto;
	}
	#main_header {
		width: 960px;
		margin: 0 auto;
		height: 70px;
		position: relative;
	}
	
	#main_header .common {
		color: #1c3f61;
		font-family: arial;
		font-size: 15px;
		font-weight: 900;
		position: absolute;
		right: 20px;
		top: 0px;
	}
	
	#main_header .common #form {
		display: inline-block;
	}
	
	.common a {
		text-decoration: none; 
	}
	.common-button {
		background-color: #1c3f61;
		color: #ddbe9f;
		border: none;
	}
	
	.topnav {
		overflow: hidden;
		background-color: #ddbe9f;
		position: absolute;
		top: 20px;
		width: 100%;
		height: 50px;
	}
	
	.topnav #logo {
		background-color: #1b2233;
		color: white;
	}
	
	.topnav a {
		float: left;
		color: #f2f2f2;
		text-align: center;
		padding: 14px 16px;
		text-decoration: none;
		font-size: 17px;
		height: 50px;
	}
</style>
<%
	Customer customer = (Customer)session.getAttribute("currentCustomer");
	CSR csr = (CSR)session.getAttribute("currentCSR");
	
	if(customer != null) {
%>
	<div id="main_header">
		
		<div class="common">WELCOME, <%= customer.getFirstName()%> <%=customer.getLastName()%>&nbsp;
			
			<form id="form" action="MyPageController">	
				<input type="hidden" name="customerId" value="<%=customer.getCustomerId()%>" />		
				<input type="submit" name="button" value="My Orders" />
			</form>
			
			<a href="Logout.jsp">
				<button>Log out</button>
			</a>
		</div>
		
		<div class="topnav">
			<a id="logo" href="WelcomeController">Shoe Shopping Mall</a>
		</div>
	</div>
	<br>
<%
	} else if (csr != null) {
%>
		
	<div id="main_header">
		<div class="common">WELCOME, <%=csr.getFirstName()%> <%=csr.getLastName()%>&nbsp;
			<a href="Logout.jsp">
				<button>Log out</button>
			</a>
		</div>
		<div class="topnav">
			<a id="logo" href="CSRMenu.jsp">Shoe Shopping Mall ( CSR Page )</a>
		</div>
	</div>
<%
	} else {
%>
	<div id="main_header">
		<div class="common"> Please, log in
			<a href="Login.jsp">
				<button>Log in</button>
			</a>
		</div>
		<div class="topnav">
			<a id="logo" href="CSRMenu.jsp">Shoe Shopping Mall ( CSR Page )</a>
		</div>
	</div>
<%
	}
%>