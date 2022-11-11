<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<meta name="viewport" content="width=device-width, initial-scale=1.0">

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
.form{
  width: 100%;
  margin-bottom: 1em;
}

.submit{
  display: block;
  width: 50%;
  padding: 0.75rem;
  background: rgb(2,0,36);
  color: white;
  border-radius: 15px;
  cursor: pointer;
  text-decoration:none;
}
.i1{
display: block;
  width: 50%;
  padding-top: 10px;
  padding-left: 10px;
  padding-right: 10px;
  background: rgb(2,0,36);
  color: white;
  border-radius: 15px;
  cursor: pointer;
  text-decoration:none;
}
#s1{
display: block;
  width: 30%;
  padding: 0.75rem;
  background: rgb(2,0,36);
  color: white;
  border-radius: 15px;
  cursor: pointer;
  text-decoration:none;
}
#s2{
display: block;
  width: 40%;
  padding: 0.75rem;
  background: rgb(2,0,36);
  color: white;
  border-radius: 15px;
  cursor: pointer;
  text-decoration:none;
}

textarea{
  width: 100%;
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
    width: 90%;

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
    <link rel="stylesheet" href="table.css">
<title>View Users</title>  
</head>  
<body>  
  
<%@page import="pack1.UserDao,pack1.*,pack1.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 
 <nav class="nav nav_top">
           	 <div id="logo">
			<marquee behavior="scroll">Watch workers</marquee>            	
			</div>
            <div class="nav_side">
                 <a href="view1.jsp">VIEW</a>
                  <a  href="billing.jsp">BILLING</a>
                 <a  href="purchase.jsp">PURCHASE</a>
                 <a  href="worker.jsp">WORKER</a>
                  
                 <a  href="dealer.jsp">DEALER</a>
                 <a  href="first.jsp">HOME</a>
              
            </div>
        </nav>
 <div id="container_1">
  
  <h1 id="title">
Users List</h1><!--title-->
<p id="description">
  Dealer details informations
</p><!--description--->
  
</div><!---container_1---> 
<div id="container_2">


<form action="viewuser.jsp" method="">
    <h2>search Here</h2>
    <input type="text" placeholder="id" id="i1" name="id1">
     <input type="submit" class="submit" id="s1" value="search">
   
  </form> 
  <form action="viewuser.jsp" method="">
   
     <input type="submit" class="submit" id="s2" value="Refersh">
   
  </form> 
  	  <a href="dealer.jsp" class="submit">Add New User</a>  
  

<%  
if(request.getParameter("id1")!=null){
	String n=request.getParameter("id1");
	List<User> list=(List) UserDao.getRecordById(n);  
	request.setAttribute("list",list);  %>
	
	
	
	<div id="container_2">
  <div class="outer-wrapper">
    <div class="table-wrapper"> 
<table border="1" width="90%">  

<tr><th>Id</th><th>Name</th><th>Email</th>  
<th>Phoneno</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td><td>${u.getName()}</td>  
<td>${u.getEmail()}</td><td>${u.getPhoneno()}</td>
<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
    


      
    
</div><!--container_2--->
	
	
	 

	
<%}
else{  		
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
 <div class="outer-wrapper">
    <div class="table-wrapper"> 
<table border="1" width="90%">  
<tr><th>Id</th><th>Name</th><th>Email</th>  
<th>Phoneno</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td><td>${u.getName()}</td>  
<td>${u.getEmail()}</td><td>${u.getPhoneno()}</td>
<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
<td><a href="deleted.jsp?id=${u.getId()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
</div></div><%} %>
<br/>  
  
</body>  
</html>  