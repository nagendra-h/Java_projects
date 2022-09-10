<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error1.jsp" %>
    <%@page import="pack1.UserDao"%>  
    <jsp:useBean id="u" class="pack1.User"></jsp:useBean>  
    <%@page import="pack1.UserDao,pack1.*,pack1.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  
String n=request.getParameter("id");
List<User> list=(List) UserDao.getRecordById(n);  
request.setAttribute("list",list);  
%>  
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
<br/><a href="viewuser.jsp">Go for Changes</a>  
  
</body>
</html>