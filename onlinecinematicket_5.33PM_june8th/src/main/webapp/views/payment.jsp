<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transaction Successful!!</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

</head>
<body>
<% int id=(int)request.getAttribute("bookingid"); %>
<% int userid=(int)request.getAttribute("userid"); %>
<% double price=(double)request.getAttribute("price"); %>


<nav class="navbar navbar-light" style="background-color: #212326;">
      <a class="navbar-brand" href="/viewticket/<%=id%>" style="margin-left:50px;font-size:25px;color:white">Print/Cancel ticket</a>
     <a class="navbar-brand" href="/search" style="margin-left:0px;font-size:30px;color:white">Home</a>
  
       <!-- <a class="navbar-brand" href="/tickets/<%=userid%>" style="margin-left:50px;font-size:25px;color:white">View All Tickets </a>-->
               <a class="navbar-brand" href="/logout" style="margin-left:50px;font-size:30px;color:white">Log Out</a>
        </nav>
<h1 style="text-align:center;color:green;margin-top:100px">Transaction Sucessful!!! </h1>
<h2 style="text-align:center;color:green;margin-top:100px">Payment of rupees <%=price %> done</h2>

</body>
</html>