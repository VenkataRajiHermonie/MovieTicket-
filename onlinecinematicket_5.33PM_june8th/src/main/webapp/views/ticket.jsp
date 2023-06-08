<%@page import="com.wipro.onlinecinematicket.bean.Booking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

<style>
	.login{
		width: 600px;
        margin-left: 436px;
    margin-top: 10px;
    border-radius: 20px;
    padding: 20px;
    	
	}
</style>
</head>
<body>
 <%@include file="header.jsp" %>
<% Booking ticket=(Booking) request.getAttribute("ticket"); %>


	<h2 style="margin-left:560px;margin-top:20px;font-size:50px;color:#24458bf2">Ticket Details</h2>
	
	
	
	
	
<div class="login">
<div class="row ">
    <div class="col">
    <h4>BookingId:</h4>
    <b>  <input type="text" value="<%=ticket.getBookingid() %>"  class="form-control" placeholder="Enter Name" readOnly></b>
    </div>
    <div class="col">
    <h4>Location:</h4>
     <b> <input type="text" value="<%=ticket.getLocation() %>" class="form-control" placeholder="Enter your Id"readOnly></b>
    </div>
    </div>
  <div class="row mt-4">
    <div class="col">
    <h4>MovieName:</h4>
     <b> <input type="text" value="<%=ticket.getMoviename() %>" class="form-control" placeholder="Enter Name"readOnly></b>
    </div>
    <div class="col">
    <h4>TheaterName:</h4>
     <b> <input type="text" value="<%=ticket.getTheatername() %>" class="form-control" placeholder="Enter your Id"readOnly></b>
    </div>
    </div>
 
	
  <div class="row mt-4">
    <div class="col">
    <h4>ShowDate:</h4>
    <b>  <input type="text" value="<%=ticket.getShowdate() %>"  class="form-control" placeholder="Enter Name"readOnly></b>
    </div>
    <div class="col">
    <h4>ShowTime:</h4>
     <b> <input type="text" value="<%=ticket.getShowtime()  %>" class="form-control" placeholder="Enter your Id"readOnly></b>
    </div>
    <div class="col">
    <h4>Duration:</h4>
     <b> <input type="text" value="<%=ticket.getDuration()  %>" class="form-control" placeholder="Enter your Id"readOnly></b>
    </div>
  </div>
  
  <div class="row mt-4">
    <div class="col">
    <h4>ShowType:</h4>
     <b> <input type="text" value="<%=ticket.getShowtype() %>" class="form-control" placeholder="Enter Name"readOnly></b>
    </div>
    <div class="col">
    <h4>PaymentType:</h4>
     <b> <input type="text" value="Credit Card" class="form-control" placeholder="Enter your Id"readOnly></b>
    </div>
    </div>

  <div class="row mt-4">
    <div class="col">
    <h4>Price:</h4>
     <b> <input type="text" value="<%=ticket.getPrice() %>"  class="form-control" placeholder="Enter Name"readOnly></b>
    </div>
    <div class="col">
    <h4>Seats:</h4>
     <b> <input type="text" value="<%=ticket.getSeats()  %>" class="form-control" placeholder="Enter your Id"readOnly></b>
    </div>
 
 		<form action="/searchhere">
	    <button class="btn btn-primary mt-4 btn-block form-control" onclick="window.print()" >Print Ticket</button>
	    </form>
	    <form action="/cancel/<%=ticket.getBookingid() %> ">
	    <button class="btn btn-primary mt-4 btn-block form-control"  >Cancel Ticket</button>
	    </form>
	    </div>
    
</div>
</body>
</html>