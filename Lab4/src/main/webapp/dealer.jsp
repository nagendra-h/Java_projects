<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="viewuser.jsp">View All Records</a><br/>  
<%PrintWriter pc=response.getWriter();

if(session.getAttribute("name")==null){
	response.sendRedirect("login.html");
}
else{ %>
<h1>Add New dealer</h1>  
<form action="adduser.jsp" method="post">  
<table>  
<tr><td>Id:</td><td><input type="text" name="id"/></td></tr>  
<tr><td>Name:</td><td><input type="text" name="name"/></td></tr>  
<tr><td>Email:</td><td><input type="email" name="email"/></td></tr>  
<tr><td>Phone no:</td><td>  
 <input type="text" name="phoneno"/>
</td></tr>  
<tr><td colspan="2"><input type="submit" value="Add User"/></td></tr>  
</table>  
</form>  
<%}%>
</body>
</html>