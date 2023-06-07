<%@page import="com.wipro.onlinecinematicket.bean.Movie"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upcoming Shows</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>
body{

		background-repeat:no-repeat;
		background-attachment:fixed;
		background-size:100% 100%;
		background-color:black;
	}
	</style>
</head>
<body>
 <%@include file="header.jsp" %>
<form style="margin-top:50px">
<h2 style="margin-left:510px;color:Black">Upcoming shows</h2>
  <!-- <table class="table table-bordered table-primary mt-4">-->
    <table class="table table-bordered light table-striped table-hover mt-4">
  <thead>
    <tr>
    <th>MovieName</th>
      <th>ActorName</th>
      <th>DirectorName</th>
      <th>Location</th>
      <th >TheaterName</th>
      <th >ShowDetails</th>
      
    </tr>
  </thead>
 
  <tbody>
  <%
  List<Movie> list1=(List<Movie>) request.getAttribute("list");
  %>
   <% for(int i=0;i<list1.size();i++) {%>


   <tr>
   		    <td><%= list1.get(i).getMoviename() %></td>
		    <td><%=list1.get(i).getActorname() %></td>
		    <td><%= list1.get(i).getDirectorname() %></td>
		    <td><%= list1.get(i).getTheater().getLocation() %></td>
		    <td><%= list1.get(i).getTheater().getTheatername() %></td>
		    <td><a  href="/show/<%=list1.get(i).getMovieid() %>/<%=list1.get(i).getTheater().getTheaterid() %>" >Click Here For Show Details</a>	</td>
		    
    </tr>
   <%} %>
  </tbody>
 <!-- background-image:url('/images/movie1.jpg'); -->
</table>
</form>
</body>
</html>