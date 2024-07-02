<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Create.css">
<title>Create</title>
</head>
<body>
	
<div class="crete_event">
	<h1>Seller Information</h1><br><br><br>
	<form action="insert" method="post">

		<div class="div_form">
			<label for="event_name">Item Name :</label>
			<input type="text" name="name" id="event_name" required>
		</div>

		<div class="div_form">
			<label >Description :</label>
			<input type="text" name="address" id="event_name" required>
		</div>

		<div class="div_form">
			<label for="event_date">Starting Price:</label>
			<input type="text" name="phone" id="event_name" required>
		</div>

		<div class="div_form">
			<label for="condition">Condition :</label>
<br>
			<select name="product" id="event_name" required>
			  <option value="Brandnew">Brand New</option>
			  <option value="used">Used</option>
			</select>
			
		</div>
		<div class="div_form">
			<label for="event_price">Auction Duration(Hours) :</label>
			<input type="text" name="duration" id="event_price" required>
		</div>
		

		<br>
		
	
		<div class="div_form">
			<button type="submit" class="submit_button">Submit</button>
		</div>
	</form>
</div>



</body>
</html>