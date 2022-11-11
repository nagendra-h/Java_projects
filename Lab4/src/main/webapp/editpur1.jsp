<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error1.jsp" %>
    <%@page import="pack1.addpurchase"%>  
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
int i=addpurchase.update(u);  

	%>12
	<script>
  alert("Purchase details updated.");

</script>
<script>  location.replace("viewpurchase.jsp")
</script>

  
  
</body>
</html>