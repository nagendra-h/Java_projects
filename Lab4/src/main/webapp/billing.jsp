<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error1.jsp"  %>
    <%@page import="java.sql.*,java.util.*,java.io.*" %>
    <%@page import="pack1.UserDao,pack1.*,pack1.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="table.css">
    <link rel="stylesheet" href="style.css">
<title>View Users</title>  
</head>

<style>
body{
  background-image: url("https://st3.depositphotos.com/1103339/13209/v/1600/depositphotos_132095056-stock-illustration-abstract-seamless-pattern-in-postmodern.jpg");
}
div{
  margin: 2em 5em 3em 5em;

  padding: 2em 6em 2em 6em;
  background: rgb(2,0,36);
background: linear-gradient(117deg, rgba(2,0,36,1) 0%, rgba(125,129,150,0.9757503221014968) 96%, rgba(222,199,45,1) 98%, rgba(222,199,45,1) 98%, rgba(142,49,242,0.5859143339953169) 98%);
  color: #ffff;
  font-family: cursive;
  border-radius: 1.25rem;
}
#container_1{
  text-align:center;
}
#container_2{
 display: block;

  
}
nav{
	    background-color: rgba(0, 0, 0, 0.905); 
	    padding: 10px;
	    padding-left: 50px;
	    padding-left: 50px;
	    display: flex;
	    box-shadow: 0px 3px 65px 0px rgb(157, 0, 255);
	}
	
.nav_side{
 background-color: rgba(0, 0, 0, 0.905); 
    float: right; 
    width: 60%;

}
.nav_side a{
    float:right;
    text-decoration: none;
    margin-right: 30px;
    padding-top: 20px;
    font-weight: bold;
    font-family: serif;
    font-size: 20px;
    color:white;
    justify-content: center;
    align-items: center;
    align-content: center;
    text-align: center;
}
.nav_side a:hover{
    color: rgb(157, 0, 255);
    text-decoration: underline;
    transition:  0.5s ease ;
}
</style>
<body>  
  
<%@page import="pack1.AddImage.*,pack1.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%if(session.getAttribute("name")==null){
	response.sendRedirect("login.html");
}
else{ %>
  <nav class="nav nav_top">
           	 <div id="logo">
			<marquee behavior="scroll">Watch workers</marquee>            	
			</div>
            <div class="nav_side">
                 
                 <a  href="login.html">LOGOUT</a>
              
            </div>
        </nav>
        <div id="container_1">
 
  <h1 id="title">
  Add new billing details
</h1><!--title-->
<p id="description">
  Enter the required data in the boxes.
</p><!--description--->
  
</div><!---container_1--->
<div class="container">
  <div class="row">
    <div class="col-5">
    <%  

	List<purchase> list=(List) addpurchase.getAllRecords();  
	request.setAttribute("list",list);  %>
	 
    <div class="table-wrapper"> 
<table border="1" width="90%" id="t1">  
<tr><th>Dealer Id</th>
<th>Watch Id</th><th>Watch Name</th><th>Quantity</th>  
<th>Price</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td>
<td>${u.getWid()}</td><td>${u.getWname()}</td>  
<td>${u.getQty()}</td><td>${u.getPrice()}</td>
</tr>  
</c:forEach>  
</table>  
</div></div>
	

    <div class="col-3">
    <h1>Add Billing details</h1>  
<form action="addbiling" method="post">  
<table border=1>  
<tr><td>Dealer Id</td><td><input type="text" name="id"/></td></tr>  
<tr><td>Watch Id:</td><td><input type="text" name="wid"/></td></tr>  
<tr><td>Watch Name:</td><td><input type="text" name="wname"/></td></tr>  
<tr><td>Quantity:</td><td><input type="text" name="qty"/></td></tr>  
<tr><td>Price:</td><td>  
 <input type="text" name="price"/>
</td>
<tr><td>Customer Id:</td><td><input type="text" name="cid"/></td></tr>  
<tr><td>Customer Name:</td><td><input type="text" name="cname"/></td></tr> 
<tr><td>Email:</td><td><input type="email" name="email"/></td></tr>  
 
<tr><td>Age:</td><td><input type="text" name="age"/></td></tr>  
<tr><td>Phone no:</td><td><input type="text" name="phno"/></td></tr>  

<tr><td>Date:</td><td><input type="date" name="date2"/></td></tr>  
<tr><td>Customer type:</td><td><input type="text" name="ctype"/></td></tr>
</tr>  
<tr><td colspan="2"><input type="submit" value="Add"/></td></tr>  
</table>  
</form>  
    </div>
    <div class="col-4">
    
    <table class="calculator" >
  <tr>
    <td colspan="3"> <input class="display-box" type="text" id="result" disabled /> </td>
 
    <!-- clearScreen() function clears all the values -->
    <td> <input type="button" value="C" onclick="clearScreen()" id="btn" /> </td>
  </tr>
  <tr>
    <!-- display() function displays the value of clicked button -->
    <td> <input type="button" value="1" onclick="display('1')" /> </td>
    <td> <input type="button" value="2" onclick="display('2')" /> </td>
    <td> <input type="button" value="3" onclick="display('3')" /> </td>
    <td> <input type="button" value="/" onclick="display('/')" /> </td>
  </tr>
  <tr>
    <td> <input type="button" value="4" onclick="display('4')" /> </td>
    <td> <input type="button" value="5" onclick="display('5')" /> </td>
    <td> <input type="button" value="6" onclick="display('6')" /> </td>
    <td> <input type="button" value="-" onclick="display('-')" /> </td>
  </tr>
  <tr>
    <td> <input type="button" value="7" onclick="display('7')" /> </td>
    <td> <input type="button" value="8" onclick="display('8')" /> </td>
    <td> <input type="button" value="9" onclick="display('9')" /> </td>
    <td> <input type="button" value="+" onclick="display('+')" /> </td>
  </tr>
  <tr>
    <td> <input type="button" value="." onclick="display('.')" /> </td>
    <td> <input type="button" value="0" onclick="display('0')" /> </td>
 
    <!-- calculate() function evaluates the mathematical expression -->
    <td> <input type="button" value="=" onclick="calculate()" id="btn" /> </td>
    <td> <input type="button" value="*" onclick="display('*')" /> </td>
  </tr>
</table>
 
<script type="text/javascript" src="calculator.js"></script>
 
   <!--  
    
    String s=request.getParameter("qty");
    if(s=="Successfully"){
    %>
   -->
    </div>   
  </div>
<%} %>
</body>
</html>