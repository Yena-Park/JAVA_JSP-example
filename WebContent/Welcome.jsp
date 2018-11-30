<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
		div.head{
			width: 361px; height: 40px;
			background-color: #ddbe9f;
			color: #1c3f61;
			font-family: arial;
			font-size: 35px;
			font-weight: 900;
		}
		.button {
			background-color: #1c3f61;
			color: #ddbe9f;
			border: none;
	    }
	</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/common.jsp" />
	<br>

	<input type="radio" id="menShoe" name="shoeType"/>Men <input  type="radio" id="womenShoe" name="shoeType"/>Women <input  type="radio" id="kidShoe" name="shoeType"/>Kid <br>
	
	<button class="button">Order</button>
</body>
</html>