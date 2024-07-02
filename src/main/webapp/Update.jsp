<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Update.css">
<title>Update</title>
</head>
<body>

  
    
    <%
    String name = request.getParameter("Name");
    String address = request.getParameter("Address");
    String phone = request.getParameter("Phone");
    String product = request.getParameter("Product");
    String duration = request.getParameter("duration");
    %>

<div class="update_event">
	<h1>Update</h1><br><br><br>
	<form action="update" method="post">

		<div class="div_form">
			<label for="event_name">Item Name :</label>
			<input type="text" name="name" id="event_name" value="<%= name %>" readonly>
		</div>

		<div class="div_form">
			<label for="event_description">Description :</label>
			<input type="text" name="address" id="event_name" value="<%= address %>" >
		</div>

		<div class="div_form">
			<label for="event_date">Starting Price :</label>
			<input type="text" name="phone" id="event_name" value="<%= phone %>" >
		</div>

		<div class="div_form">
			<label for="event_price">Condition :</label>
			<input type="text" name="product" id="event_price" value="<%= product%>" required>
		</div>
		<div class="div_form">
			<label for="event_price">Auction Duration :</label>
			<input type="text" name="duration" id="event_price" value="<%= duration%>" required>
		</div>
		
		<br>
	
		<div class="div_form">
			<button type="submit" class="update_button">Update</button>
		</div>
	</form>
</div>



</body>
</html>