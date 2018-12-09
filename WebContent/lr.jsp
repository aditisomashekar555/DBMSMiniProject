
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<head>
	<title>Shopping site</title>
<link rel="stylesheet" href="stylesheet/stylem.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Baloo+Tammudu" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.css" />


</head>
<body id="body" background="Image/a.jpg">
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Shopping Site</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index1.jsp">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Collection
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Winter</a></li>
          <li><a href="#">Summer</a></li>
          <li><a href="#">Rainy</a></li>
          <li><a href="#">Spring</a></li>
          <li><a href="#">Fall</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Brand
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Adidas</a></li>
          <li><a href="#">Shein</a></li>
          <li><a href="#">Lulu and Sky</a></li>
          <li><a href="#">Pernias Pop up Shop</a></li>
        </ul>
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

<br>
<br>
<br>
<br>
<br>
<center><font color=white><b><h2>Register</h2></b></font></center>
<div class="col-md-offset-4 col-md-4" id="location">
		<form  action="Register" method="post">
	<table class="table">
	<tr>
	<td>
	<input type="text" name="username" value="${cusername}" placeholder="Enter username">
	</td>
	<td>
	<p style="color:white">${errorlist['eusername'] }</p>
	</td>
	</tr>
	<tr>
	<td>
	<input type="email" name="email" placeholder="enter email" value="${cemail}">
	</td>
	<td>
	<p style="color:white">${errorlist['eemail'] }</p>
	</td>
	</tr>
	<tr>
	<td>
	<input type="password" name="password" placeholder="Enter password" value="${cpassword}">
	</td>
	<td>
	<p style="color:white">${errorlist['epassword'] }</p>
	</td>
	</tr>
	<tr>
	<td>
	<input type="password" name="ccpassword" placeholder="Enter cpassword" value="${ccpassword}">
	</td>
	<td>
	<p style="color:white">${errorlist['epassword'] }</p>
	</td>
	
	<tr>
	<td>
	<input type="address" name="address" placeholder="Enter address" value="${caddress}">
	</td>
	</tr>
	<tr>
	<td>
	<input type="phone" name="phone" placeholder="Enter phone" value="${cphone}">
	</td>
	</tr>
	
	
	<tr>
	<td>
	<input type="submit" value="Send">
	</td>
	
	
	</table>
	
<center><H3>ALready a user?</H3></center>
<center><a href="Login.jsp"><input type="submit" value="Login"></a></center>
</form>
</div>

	



</body>
</html>	
	

