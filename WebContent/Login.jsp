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
      <li class="active"><a href="index.jsp">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Collection
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="lr.jsp">Winter</a></li>
          <li><a href="lr.jsp">Summer</a></li>
          <li><a href="lr.jsp">Rainy</a></li>
          <li><a href="lr.jsp">Spring</a></li>
          <li><a href="lr.jsp">Fall</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Brand
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="lr.jsp">Adidas</a></li>
          <li><a href="lr.jsp">Shein</a></li>
          <li><a href="lr.jsp">Lulu and Sky</a></li>
          <li><a href="lr.jsp">Pernias Pop up Shop</a></li>
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

<h2 style="color:red">${message}</h2>
<center><font color=white><b><h2>Login</h2></b></font></center>

<div class="col-md-offset-4 col-md-4"  id="location">

<form  action="LoginController" method="post">
	<table class="table">
	
	<tr>
	<td>
	<input type="text" name="username" placeholder="Enter Username">
	</td>
	</tr>
	
	<tr>
	<td>
	<input type="password" name="password" placeholder="Enter password">
	</td>
	</tr>
	
	<tr>
	<td>
	<input type="submit" value="login">
	</td>
	</tr>
	
	</table>
</form>
</div>
</body>
</html>




















