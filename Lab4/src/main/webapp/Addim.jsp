<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@page import="java.io.FileOutputStream,java.io.IOException,java.sql.*,javax.servlet.http.Part
         " %>
         <%@MultipartConfig
 %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Part file=request.getPart("image");

String imageFileName=file.getSubmittedFileName(); 
Connection connection=null;

try 
{
	Class.forName("com.mysql.jdbc.Driver");  
	connection=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/java1","root","root");  
	PreparedStatement stmt;
	String query="insert into image(imageFileName) values(?)";
	stmt=connection.prepareStatement(query);
	stmt.setString(1,imageFileName);
	int row=stmt.executeUpdate(); // it returns no of rows affected.
	
	if(row>0)
	{
		System.out.println("Image added into database successfully.");
	}
	
	else
	{
		System.out.println("Failed to upload image.");
	}
	
	
}
catch (Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>