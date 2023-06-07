<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>	.login{
		width: 600px;
        margin-left: 436px;
    margin-top: 100px;
    border-radius: 20px;
    padding: 20px;
    	
	}
	
	</style>
</head>
<!--<body style="background-color:#286a8bd4;" >-->
<body style="background-color:#E2DFD2;" >
<form action="/register" method="post">
<!--<nav class="navbar navbar-light" style="background-color: #212326;">-->
<nav class="navbar navbar-light" style="background-color:#E2DFD2;">
    <!--<a class="navbar-brand" href="/views/about.jsp" style="margin-left:100px;font-size:30px;color:white">Online Cinema Tickets</a>-->
    <a class="navbar-brand" style="margin-left:100px;font-size:30px;color:white">Online Cinema Tickets</a>
   <a class="navbar-brand" href="/" style="margin-right:50px;font-size:25px;color:white">SignIn</a>
     
</nav>
<div class="login" style="background-color:#cad02fd4">
	<h2 Style="text-align:center" >Register Here...</h2>
	<h3  Style="text-align:center">${existed}</h3>
	 <div class="form-group" >
	 
    <label for="exampleInputEmail1">Name</label>
    <!--<input type="text"  pattern="[a-zA-Z]+" title="must be alphabets only"  name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your name without spaces" required>-->
  <!-- <input type="text"  pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*?[\s]).{3,}" title="must be alphabets only"  name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your name without spaces" required>-->
    <input type="text" name="name"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Please enter your name" pattern="^[a-zA-Z\s]{3,}$" required>
    <label for="exampleInputEmail1">Email</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Please enter a valid mail ID" required>
    
     
    <label for="exampleInputEmail1">PhoneNumber</label>
    <input type="number" name="phno" min="6000000000" max="9999999999" title="Must contain 10 digits" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your contact number" title="Must be a mail" required>
  
  
    <label for="exampleInputEmail1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
     title="Must contain at least one number and one uppercase and lowercase letter and one special Character, and at least 8 or more characters" required>
   
    <label for="exampleInputEmail1">Address</label>
    <input type="text" name="address" class="form-control"  id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Address"  required>
   
    
    <label for="exampleInputEmail1">City</label>
    <input type="text" name="city" pattern="[a-zA-Z]+" class="form-control"  id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your City"  required>
   
    <label for="exampleInputEmail1">State</label>
    <input type="text" name="state" pattern = "^[a-zA-Z]+(\\s[a-zA-Z]+)?$" class="form-control"  id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your State"  required>
   
    </div>
    
    <button type="submit" class="btn btn-success mt-4 btn-block form-control" >Register</button>
    </div>
    </form>
    
</body>
</html>