<%@page import="com.wipro.onlinecinematicket.bean.Theater"%>
<%@page import="com.wipro.onlinecinematicket.bean.Movie"%>
<%@page import="com.wipro.onlinecinematicket.bean.Show"%>
<%@page import="com.wipro.onlinecinematicket.bean.Booking"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>

	.login{
		width: 600px;
        margin-left: 436px;
    margin-top: 10px;
    border-radius: 20px;
    padding: 20px;
    	
	}
	body{
		background-image:url('/images/');
		background-repeat:no-repeat;
		background-attachment:fixed;
		background-size:100% 100%;
	}
	
</style>
</head>
<body>
	 <%@include file="header.jsp" %>
     <% Show show=(Show) request.getAttribute("show"); %>
     <% Booking booking=(Booking) request.getAttribute("booking"); %>
	






	<h2 style="margin-left:480px;margin-top:20px;font-size:50px;color:#24458bf2">Book your Ticket!!</h2>
	
	<form action="/booking/<%=show.getShowid() %>" method="post" >	
	<div class="login" style="color:black">
	
  <div class="row">
    
     <div class="col">
    <h4>Movie:</h4>
     <b> <input type="text" value="<%=show.getMovie().getMoviename() %>" name="Movie" class="form-control mt-3"  readonly></b>
    </div>
    <div class="col">
    <h4>Theatre:</h4>
     <b> <input type="text" value="<%=show.getTheater().getTheatername() %>" name="Theatre" class="form-control mt-3" readOnly></b>
    </div>
   
    <!--   <h4>Price per ticket:</h4>
     <b> <input type="number" value="<%=show.getPrice() %>" name="Price" class="form-control mt-3" readOnly></b>
    </div>
    </div>-->
 <!--  <h4>Price per ticket:</h4>
     <b> <input type="number" value="<%=show.getPrice() %>" name="Price" class="form-control mt-3" readOnly></b>
    </div>-->

     <div class="row mt-4" >
   <h4>Price per ticket:</h4>
     <b> <input type="number" value="<%=show.getPrice() %>" name="Price" class="form-control mt-3" readOnly></b>
    </div>
    
  </div>
	
  <div class="row mt-4" >
    <div class="col ">
    <h4 >Show Date:</h4>
    <b>  <input type="text" value="<%=show.getShowdate() %>" name="date"  class="form-control mt-3" readOnly></b>
    </div>
    <div class="col">
    <h4>Show Time:</h4>
     <b> <input type="text" value="<%=show.getShowtime()  %>" name="time" class="form-control mt-3" placeholder="Enter your Id" readOnly></b>
    </div>
  </div>




<div class="row mt-4">
   
    <div class="col">
    <h4>Seat Count:</h4>
     <b> <input type="number" name="seats" class="form-control mt-3" placeholder="Enter No Of Seats" min="1" max="5" required></b>
     
     
    </div>
    
    <h3 style="margin-top:20px;text-align:center">Payment Method</h3>

 <div class="row mt-2">
   
    <div class="col">
    <h4>Credit Card Number:</h4>
    <!-- <b> <input type="text" name="cardnumber" pattern = "^[0-9]{16}$" class="form-control mt-3" placeholder="Enter your 16 digit credit card number"  required></b>-->
       <b> <input type="text" name="cardnumber" pattern="\d{4}-\d{4}-\d{4}-\d{4}" class="form-control mt-3" placeholder="xxxx-xxxx-xxxx-xxxx"  required></b>
    </div>
  </div>
  
   <div class="row mt-4" >
    <div class="col ">
    <h4 >CVV:</h4>
    <b>  <input type="number" name="cvv"  pattern="[0-9]{3}" class="form-control mt-3" min="100" and max="999" placeholder="Enter CVV" required></b>
    </div>
    <div class="col">
    <h4>Expiry:</h4>
     <b> <input type="text" name="expiry" class="form-control mt-3" pattern="(0[1-9]|1[0-2])/((23|24|25|26|27))" placeholder="MM/YY" required></b>
    
  </div>

 
	    <button type="submit" class="btn btn-primary" Style="margin-top:10px;margin-left:px">Pay Now</button>
	    </div>
	    </div>
    </form>
</body>
</html>