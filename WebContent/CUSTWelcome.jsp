<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	#main input:nth-of-type(1) { display: none; }
	#main input:nth-of-type(1) ~ div#men  { display: none; }
	#main input:nth-of-type(1):checked ~ div#men  { display: block; }
	
	#main input:nth-of-type(2) { display: none; }
	#main input:nth-of-type(2) ~ div#women  { display: none; }
	#main input:nth-of-type(2):checked ~ div#women  { display: block; }
	
	#main input:nth-of-type(3) { display: none; }
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
	
	</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/common.jsp" />
	
	<div id="main">
		<div id="main_tab">
			<input type="radio" id="men" checked="checked" name="tab" value="Men"/>
			<input type="radio" id="women" name="tab" value="Women"/>
			<input type="radio" id="kid" name="tab" value="Kid"/>
			<section class="buttons">
				<label for="men">Men</label>
				<label for="women">Women</label>
				<label for="kid">Kid</label>
			</section>
			
			<div class="tab_item" id="men">
				<ul>
					<li>men</li>
				</ul>
			</div>
			<div class="tab_item" id="women">
				<ul>
					<li>women</li>
				</ul>
			</div>
			<div class="tab_item" id="kid">
				<ul>
					<li>kid</li>
				</ul>
			</div>
		</div>

		<button>Order</button>
	</div>
	<br>
</body>
</html>