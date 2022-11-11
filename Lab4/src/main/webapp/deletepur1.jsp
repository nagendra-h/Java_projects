<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error1.jsp"%>
        <%@page import="pack1.addpurchase"%>  
        <%@page import="pack1.UserDao"%>  
    <jsp:useBean id="u" class="pack1.purchase"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  
int i=addpurchase.delete(u);  
if(i>=1){  %>
<script>
  alert("purchase details deleted.");

</script>
<script>  location.replace("viewpurchase.jsp")
</script>
<% }
else{  
response.sendRedirect("error1.jsp");  
}  %>
</body>
</html>