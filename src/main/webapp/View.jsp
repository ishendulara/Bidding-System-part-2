<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="View.css">
<title>View </title>
</head>
<body>
  
     <div class="summary">
     
     <%
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String product = request.getParameter("product");
		String duration = request.getParameter("duration");
	%>
     
        <h1>Summary</h1><br>

  
        <div class="summary_item">
            <strong>Item Name:</strong>
            <span id="event-name"><%= name %></span>
        </div>
        <div class="summary_item">
            <strong>Description:</strong>
            <p id="event-description"><%= address %></p>
        </div>
        <div class="summary_item">
            <strong>Starting Price:</strong>
            <span id="event-date"><%= phone%></span>
        </div>
        <div class="summary_item">
            <strong>Condition:</strong>
            <span id="event-price"><%= product%></span>
        </div>
        <div class="summary_item">
            <strong>Auction Duration :</strong>
            <span id="event-price"><%= duration%></span>
        </div>
        <c:url value="Update.jsp" var="eventUpdate">
        <c:param name="Name" value="<%= name %>" />
	 	<c:param name="Address" value="<%= address %>" />
	 	<c:param name="Phone" value="<%= phone%>" />
	 	<c:param name="Product" value="<%= product%>" />
	 	<c:param name="duration" value="<%= duration%>" />
		</c:url>
		
		
		
	
	<a href="${eventUpdate}">
    <button type="submit" class="update_button">Update Event</button>
	</a>
	
	<br>
	<br>
	
	<c:url value="Delete.jsp" var="eventDelete">
       <c:param name="Name" value="<%= name %>" />
	 	<c:param name="Address" value="<%= address %>" />
	 	<c:param name="Phone" value="<%= phone%>" />
	 	<c:param name="Product" value="<%= product%>" />
	 	<c:param name="duration" value="<%= duration%>" />
		</c:url>
		
		
		
	
	<a href="${eventDelete}">
    <button type="submit" class="delete_button">Delete Event</button>
	</a>
	
	
        
    </div>
    
    
</body>
</html>