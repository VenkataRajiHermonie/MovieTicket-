<%@page import="com.wipro.onlinecinematicket.bean.Booking"%>
<%@page import="com.wipro.onlinecinematicket.bean.Show"%>
<%@page import="com.wipro.onlinecinematicket.bean.Movie"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Tickets</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>
body{
		background-image:url('/images/ship4.jpg');
		background-repeat:no-repeat;
		background-attachment:fixed;
		background-size:100% 100%;
	}
	</style>
</head>
<body>
 <%@include file="header.jsp" %>
<form style="margin-top:20px">
<h2 style="text-align:center;background-color:black;color:red">${cancel }</h2>
<h2 style="margin-left:543px;color:Black">Your Tickets</h2>
     <table class="table table-bordered light table-striped table-hover mt-4">
  <thead>
    <tr>
    <th>MovieName</th>
      <th>TheaterName</th>
      <th>Duration</th>
      <th>ShowDate</th>
      <th>ShowTime</th>
      <th >ShowType</th>
      <th >Seats</th>
      <th >Price</th>
      
      <th>ViewTicket</th>
    
    </tr>
  </thead>
 
  <tbody>
  <%
  List<Booking> list1=(List<Booking>) request.getAttribute("list");
  %>
   <% for(int i=0;i<list1.size();i++) {%>

 
   <tr>
   		    <td><%= list1.get(i).getMoviename() %></td>
		    <td><%=list1.get(i).getTheatername() %></td>
		    <td><%= list1.get(i).getDuration() %></td>
		    <td><%= list1.get(i).getShowdate() %></td>
		    <td><%= list1.get(i).getShowtime()%></td>
		   	<td><%= list1.get(i).getShowtype() %></td>
			<td><%= list1.get(i).getSeats() %></td>
			<td><%= list1.get(i).getPrice() %></td>
		    
		   <td> <a  href="/viewticket/<%=list1.get(i).getBookingid() %>" >ViewTicket</a>	</td>
    </tr>
   <%} %>
  </tbody>
  
</table>
</form>
</body>
</html>