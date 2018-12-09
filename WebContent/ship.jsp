<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
</head>
<body id="body" background="Image/pic1.jpg">
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
          <li><a class="btn btn-primary" href='Sort?coll="winter"'>Winter</a></li>
          <li><a class="btn btn-primary" href='Sort?coll="summer"'>Summer</a></li>
          <li><a class="btn btn-primary" href='Sort?coll="rainy"'>Rainy</a></li>
          <li><a class="btn btn-primary" href='Sort?coll="spring"'>Spring</a></li>
          <li><a class="btn btn-primary" href='Sort?coll="fall"'>Fall</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Brand
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a class="btn btn-primary" href='Sort1?coll1="Adidas"'>Adidas</a></li>
          <li><a class="btn btn-primary" href='Sort1?coll1="Shein"'>Shein</a></li>
          <li><a class="btn btn-primary" href='Sort1?coll1="Lulu and Sky"'>Lulu and Sky</a></li>
          <li><a class="btn btn-primary" href='Sort1?coll1="Pernia Pop Up Shop"'>Pernias Pop up Shop</a></li>
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
<h3>Hi ${username}</h3>


<div class="container">
<h3>Shipping Details:</h3>
<br>  
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
	<th>Phone</th>

      </tr>
    </thead>
    <tbody>
      
      		<tr>
			<td>
				${username}
			</td>
			<td>
				${user.email}
			</td>
		<td>
				${user.address}
			</td>
		<td>
				${user.phone}
			</td>
		</tr>
    </tbody>
  </table>
</div>
<br>
<center><h4>Payment mode: Cash On Delivery</h4></center>
<br>
<center><a href="Placed?username=${username}"><button type="button" class="btn btn-success">Place Order</button></a></center>

</body>
</html>




