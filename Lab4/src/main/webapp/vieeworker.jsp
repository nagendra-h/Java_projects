<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="pack1.workerdatabase,pack1.*,pack1.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1><center>Worker List</center></h1>

  <form action="search_w.jsp" method="">
    <h3>search Here</h3>
    <label for="worker id">search</label>
    <input type="text" placeholder="id" name="id">
     <input type="submit" value="search">
   
  </form> 
  
<%  
List<User> list=workerdatabase.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="90%">  
<tr><th>Id</th><th>Name</th><th>Email</th>  
<th>Phoneno</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
${u.getId()}
<tr><td>${u.getId()}</td><td>${u.getName()}</td>  
<td>${u.getEmail()}</td><td>${u.getPhoneno()}</td>
<td><a href="editworker.jsp?id=${u.getId()}">Edit</a></td>  
<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
<br/><a href="worker.jsp">Add New User</a>  
  
</body>
</html>