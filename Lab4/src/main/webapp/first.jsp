<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error1.jsp"  %>
    <%@page import="java.sql.*,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Watch shop</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <style>
  .carousel-item {
    height: 65vh;
  min-height: 350px;
	  background: no-repeat center center scroll;
	  -webkit-background-size: cover;
	  -moz-background-size: cover;
	  -o-background-size: cover;
	  background-size: cover;
	}
  </style>
  </head>
<body >



<%PrintWriter pc=response.getWriter();

if(session.getAttribute("name")==null){
	response.sendRedirect("login.html");
}
else{ %>
	<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <div class="container">
    <a class="navbar-brand" href="#">Watch shop</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item active">
          <a class="nav-link" href="dealer.jsp">DEALER DETAIL</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="worker.jsp">WORKER DETAIL</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">CUSTOMER DETAIL</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">VIEW</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<header>

  <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <%-- <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>--%>  
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJykHmvvbfX_V5Ean70lEvhSWYmzpyWdJCSg&usqp=CAU')">
        <div class="carousel-caption">
          <h5>Pierce Brosnan</h5>
          <P>I have some wonderful suits in my closet, a lovely car, some refined watches.</p>
        </div>
      </div>
    <%--<div class="carousel-item" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRvX0buU0kRCgs9IzFUbxvLZjtqrkOO--4Aw&usqp=CAU')">
        <div class="carousel-caption">
          <h5>Second slide label</h5>
          <p>Some representative placeholder content for the second slide.</p>
        </div>
      </div>
      <div class="carousel-item" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLr7S4dM952oU8jujDzhvRf9XLxOwSzWOxRw&usqp=CAU')">
        <div class="carousel-caption">
          <h5>Third slide label</h5>
          <p>Some representative placeholder content for the third slide.</p>
        </div>
      </div>
    </div> 
    
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>--%>
</header>

<!-- Page Content -->
<section class="py-5">
  <div class="container">
    <h1 class="fw-light"> John Mayer</h1>
    <p class="lead">A man’s got two shots for jewelry: a wedding ring and a watch. The watch is a lot easier to get on and off than a wedding ring.</p>
  </div>
</section>

<%}%>



</body>
</html>

