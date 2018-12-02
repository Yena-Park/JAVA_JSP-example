<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import="assign3.model.Customer" %>
<%@ page import="assign3.model.CSR" %>

<style>
	body {
		font-family: arial;
	}
	.common {
		width: 600px; height: 40px;
		color: #1c3f61;
		font-family: arial;
		font-size: 35px;
		font-weight: 900;
	}
	.common-button {
		background-color: #1c3f61;
		color: #ddbe9f;
		border: none;
    }

</style>
<%
	Customer customer = (Customer)session.getAttribute("currentCustomer");
	CSR csr = (CSR)session.getAttribute("currentCSR");
	
	if(customer != null) {
		out.print("<div>");
		out.print("<div class=\"common\">WELCOME, " + customer.getUserName() + " " + customer.getFirstName() + " " + customer.getLastName() + "</div>");
		out.print("<form method=\"link\" action=\"HomePage.jsp\">"
		    	+ "<input type=\"submit\" value=\"Log out\"/>"
			+ "</form>");
		out.print("</div>");
	} else if (csr != null) {
		out.print("<div>");
		out.print("<div class=\"common\">WELCOME, " + csr.getUserName() + " " + csr.getFirstName() + " " + csr.getLastName() + "</div>");
		out.print("<form method=\"link\" action=\"Logout.jsp\">"
			    	+ "<input type=\"submit\" value=\"Log out\"/>"
				+ "</form>");
		out.print("</div>");
	} else {
	}
%>