<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error1.jsp" %>
    <%@page import="pack1.workerdatabase"%>  
<jsp:useBean id="u" class="pack1.worker"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%  
int i=workerdatabase.update(u);

response.sendRedirect("vieeworker.jsp");  
%>  
</body>
</html>