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
          <li><a class="btn btn-primary" href='Sort?category=winter&username=${username}'>Winter</a></li>
          <li><a class="btn btn-primary" href='Sort?category=summer&username=${username}'>Summer</a></li>
          <li><a class="btn btn-primary" href='Sort?category=rainy&username=${username}'>Rainy</a></li>
          <li><a class="btn btn-primary" href='Sort?category=spring&username=${username}'>Spring</a></li>
          <li><a class="btn btn-primary" href='Sort?category=fall&username=${username}'>Fall</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Brand
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a class="btn btn-primary" href='Sort1?coll1=Adidas&username=${username}'>Adidas</a></li>
          <li><a class="btn btn-primary" href='Sort1?coll1=Shein&username=${username}'>Shein</a></li>
          <li><a class="btn btn-primary" href='Sort1?coll1=Lulu and Sky&username=${username}'>Lulu and Sky</a></li>
          <li><a class="btn btn-primary" href='Sort1?coll1=Pernia Pop Up Shop&username=${username}'>Pernias Pop up Shop</a></li>  </ul>
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
<h3>Product Details:</h3>

<div class="row">
<div class="col-xs-6">
<center>	 <img src="${cloth.images}" class="img-thumbnail" alt="Cinque Terre"> </center> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<center><a href="AddCart?clothes_id=${cloth.clothes_id}&username=${username}"> <button type="button" class="btn btn-success">Add To cart</button></a></center>

</div>



<div class="container">
  
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Category</th>
        <th>Cost</th>
        <th>Style</th>
	<th>Size</th>
	<th>Colour</th>


      </tr>
    </thead>
    <tbody>
      
      		<tr>
			<td>
				${cloth.category}
			</td>
			<td>
				${cloth.cost}
			</td>
		<td>
				${cloth.style}
			</td>
	
		<td>
				${cloth.sizes}
			</td>
		<td>
				${cloth.colour}
			</td>
		</tr>
    </tbody>
  </table>
  
  
  
<br>
<br>
<br>

</body>
</html>




