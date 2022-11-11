<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String name=request.getParameter("name");
String password=request.getParameter("password");
if(name.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
	HttpSession ses=request.getSession();
	ses.setAttribute("name", name);
	ses.setAttribute("password",password);
	response.sendRedirect("welcome1.html");
	
}
else {
	response.sendRedirect("Login.html");
}

%>
</body>
</html>