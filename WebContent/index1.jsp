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
          <li><a class="btn btn-primary" href='Sort1?coll1=Pernia Pop Up Shop&username=${username}'>Pernias Pop up Shop</a></li> </ul>
      </li>        </ul>
      
  
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

<br>
<br>
<br>

 <div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="Sort1?coll1=Lulu and Sky" data-slide-to="0" class="active"></li>
      <li data-target="Sort1?coll1=Shein" data-slide-to="1"></li>
      <li data-target="Sort1?coll1=Pernia Pop Up Shop" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
     <centre> <img src="Image/lulu.jpeg"style="width:100%;"></centre>
        <div class="carousel-caption">
          <h3>Lulu And Sky</h3>
          <p>The sale haul is here!</p>
        </div>
      </div>

      <div class="item">
        <img src="Image/shein.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          <h3>Shein</h3>
          <p>Time to glam up!</p>
        </div>
      </div>
    
      <div class="item">
        <img src="Image/pernia.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          <h3>Pernias</h3>
          <p>We love the Big Apple!</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


</body>
</html>