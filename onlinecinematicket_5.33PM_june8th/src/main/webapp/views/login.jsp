<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>
	.login{
		width: 600px;
        margin-left: 400px;
    margin-top: 115px;
    border-radius: 20px;
    padding: 20px;	
	}
	.button
	{
		margin-left:60px
	}
</style>
</head>
<!--<body style="background-color:#0e9dd1d4;">-->
<body style="background-color:#E2DFD2;">

<form  action="/login" method="post" >

<nav class="navbar navbar-light" style="background-color: #212326;">
     <a class="navbar-brand" href="/views/login.jsp" style="margin-left:535px;font-size:30px;color:white">Online Cinema Tickets </a>
     
</nav>
<!-- <div class="login" style="background-color:#cad02fd4">-->
<div class="login" >
<h1 class="text-center" >Login</h1>
<h3 style="text-align:center">${wrong}</h3>
<h3 style="text-align:center">${register}</h3>
<h3 style="text-align:center">${changed}</h3>


	 <div class="form-group" >
    <label for="exampleInputEmail1">Mail ID</label><br>
    <input type="email" name="useremail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Please enter your registered mail ID" required>

    <label class=" mt-3"for="exampleInputEmail1">Password</label><br>
    <input type="password" name="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Please enter your password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
    title="Must contain at least one number and one uppercase and lowercase letter and one special character, and at least 8 or more characters" required>
   	    <a href="/forgot">Forgot Password</a>
   	
    </div>
    <button type="submit" class="btn btn-primary mt-4 btn-block form-control"  >Login</button><br><br>
    <div style="margin-left: 187px;">
    <a  href="reg" >New User? Please Click here...</a>
    </div>
   </div>
</form>
</body>
</html>