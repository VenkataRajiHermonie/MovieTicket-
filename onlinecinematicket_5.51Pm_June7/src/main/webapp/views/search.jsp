
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Search</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>

<style>	
body{
		background-image:url('/images/theatre.jpg');
		background-repeat:no-repeat;
		background-attachment:fixed;
		background-size:100% 100%;
	}
.login{
		width: 450px;
        margin-left: 500px;
    margin-top: 0px;
    border-radius: 20px;
    padding: 20px;
    color:slateblue"	
    
	}
	select
	{
		border: 10px solid;
  padding: 10px;
  box-shadow: 2px 0px 4px 3px black;
}
	}
	</style>
</head>
<body style="color:white;" >
 <nav class="navbar navbar-light" style="background-color: #212326;">
 <%String email=(String)request.getAttribute("email"); %>
      <!-- <a class="navbar-brand" href="/search" style="margin-left:50px;font-size:25px;color:white">Search</a>-->
  
           <!--  <a class="navbar-brand" href="/views/search.jsp" style="margin-left:50px;font-size:30px;color:white">Movie Tickets </a>-->
        
                       <a class="navbar-brand" href="/tickets" style="margin-left:50px;font-size:30px;color:white">My Tickets </a>
          <div class="dropdown" style="margin-right:56px;">
  <button class="btn btn-secondary dropdown-toggle" style="background-color: white;color:black" data-bs-toggle="dropdown" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Settings
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="/change">ChangePassword</a>
     <a class="dropdown-item" href="/logout" style="color:black">SignOut</a>
  </div>
</div>
  </nav>
 <h2 style="color:black;text-align:center;background-color:white">${message}</h2>
  <h2 style="color:black;text-align:center;background-color:white">${error}</h2>
 
 <div class="login" >
	<h1 style="margin-left:90px;color:#0a58ca"></h1>
<form method ="get" action="/movies">
	<div class="form-group" >
    <label for="exampleInputPassword1" style="color:white;font-size:25px;margin-left:50px">Search Movies By Location</label>
    <br>
     <select style="margin-top:20px" class="form-control" name="location" id="exampleFormControlSelect1">
      <option>Hyderabad</option>
      <option>Chennai</option>
    </select>
    </div>
    
    <button type="submit" class="btn btn- mt-4 btn-block " style="margin-left:160px;background-color:#0a58ca;color:white">Search</button>
      </form>
  </div>
 

  
</body>
</html>