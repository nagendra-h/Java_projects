<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="pack1.UserDao,pack1.*,pack1.*,java.util.*"%>  
    <jsp:useBean id="u" class="pack1.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
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

<h1>Edit Form</h1>  
<form action="edituser.jsp" method="">  
<table>  
<c:forEach items="${list}" var="u">  
<input type="hidden" name="id" value="${u.getId()}"/>  

<tr><td>Name:</td><td>  
<input type="text" name="name" value="${u.getName()}"/></td></tr>  
<tr><td>Email:</td><td>  
<input type="email" name="email" value="${u.getEmail()}"/></td></tr>  
<tr><td>Phone no:</td><td>  
 <input type="text" name="phoneno" value="${u.getPhoneno()}"/>
</td></tr>  
</td></tr>  
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
</c:forEach>  

</table>  
</form>  
  
</body>
</html>