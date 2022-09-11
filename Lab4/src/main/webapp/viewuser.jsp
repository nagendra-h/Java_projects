<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="table.css">
<title>View Users</title>  
</head>  
<body>  
  
<%@page import="pack1.UserDao,pack1.*,pack1.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1><center>Users List</center></h1>

  <form action="viewuser.jsp" method="">
    <h3>search Here</h3>
    <label for="dealer id">search</label>
    <input type="text" placeholder="id" name="id1">
     <input type="submit" value="search">
   
  </form> 
  <form action="viewuser.jsp" method="">
   
     <input type="submit" value="Refersh">
   
  </form> 
  
<%  
if(request.getParameter("id1")!=null){
	String n=request.getParameter("id1");
	List<User> list=(List) UserDao.getRecordById(n);  
	request.setAttribute("list",list);  %>
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
</div></div>
	
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
<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
</div></div><%} %>
<br/><a href="dealer.jsp">Add New User</a>  
  
</body>  
</html>  