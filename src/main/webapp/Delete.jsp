<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Delete.css">
<title>Delete</title>
</head>
<body>
     <div class="delete">
     

     <%
		String name = request.getParameter("Name");
		String address = request.getParameter("Address");
		String phone = request.getParameter("Phone");
		String product = request.getParameter("Product");
		String duration = request.getParameter("duration");
	%>
     
        <h1>Delete</h1><br>

   <form action="delete" method="post">
        <div class="delete_item">
            <strong>Item Name:</strong>
            <span id="event-name" ><%= name %></span>
            <input type="hidden" name="Name" value="<%= name %>">
            </div>
        <div class="delete_item">
            <strong>Description:</strong>
            <p id="event-description"><%= address %></p>
        </div>
        <div class="delete_item">
            <strong>Starting Price:</strong>
            <span id="event-date"><%= phone%></span>
        </div>
        <div class="delete_item">
            <strong>Condition:</strong>
            <span id="event-price"><%= product%></span>
        </div>
            <div class="delete_item">
            <strong>Auction Duration:</strong>
            <span id="event-price"><%= duration%></span>
        </div>
		<br>
        <div class="delete_item">
			<button type="submit" class="delete_button">Delete</button>
		</div>
          
        </form>
    </div>
    
    
</body>
</html>