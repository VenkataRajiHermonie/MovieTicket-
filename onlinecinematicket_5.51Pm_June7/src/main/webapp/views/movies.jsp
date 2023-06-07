<%@page import="com.wipro.onlinecinematicket.bean.Movie"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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
<form style="margin-top:50px">
<h2 style="margin-left:600px;color:white"></h2>
  <table class="table table-dark table-striped">
  <thead>
    <tr>
    <th>MovieName</th>
      <th>ActorName</th>
      <th>DirectorName</th>
      <th>ShowDate</th>
      <th>ShowTime</th>
      <th>Location</th>
      <th >TheaterName</th>
    </tr>
  </thead>
 
  <tbody>
  <%
  List<Movie> list1=(List<Movie>) request.getAttribute("movies");
  %>
   <% for(int i=0;i<list1.size();i++) {%>

 
   <tr>
   		    <td><%= list1.get(i).getMoviename() %></td>
		    <td><%=list1.get(i).getActorname() %></td>
		    <td><%= list1.get(i).getDirectorname() %></td>
		    <td><%= list1.get(i).getTheater().getDate() %></td>
		    <td><%= list1.get(i).getTheater().getTime() %></td>
		    <td><%= list1.get(i).getTheater().getLocation() %></td>
		    <td><%= list1.get(i).getTheater().getTheatername() %></td>		
    </tr>
   <%} %>
  </tbody>
  
</table>
</form>
</body>
</html>