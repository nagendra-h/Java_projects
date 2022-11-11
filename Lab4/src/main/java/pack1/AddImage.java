package pack1;
import java.io.FileOutputStream;

import java.sql.*;  
import pack1.purchase.*;  


import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddImage
 */
@MultipartConfig

@WebServlet("/AddImage")
public class AddImage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	    	Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/java1","root","root");  
			      
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id=request.getParameter("id");
		String wid=request.getParameter("wid");
		String wname=request.getParameter("wname");
		String date1=request.getParameter("date1");
// get selected image file name
		int qty =Integer.parseInt(request.getParameter("qty"));
		double price=Double.parseDouble(request.getParameter("price"));
		Connection connection=null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");  
			Statement st=null;
			connection=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/java1","root","root"); 
			String q="insert into purchase3 values('"+id+"','"+wid+"','"+wname+"','"+qty+"','"+price+"','"+date1+"')";
			st=connection.createStatement();
			int row=st.executeUpdate(q);
//			PreparedStatement stmt;
//			String query="insert into purchase values(?,?,?,?,?,?,?)";
//			stmt=connection.prepareStatement(query);
//			stmt.setString(1,id);
//			stmt.setString(2,wid);
//			stmt.setString(3,wname);
//			stmt.setString(4,imageFileName);
//			stmt.setInt(5,qty);
//			stmt.setDouble(6,price);
//			stmt.setDate(7, );
//
//
//			int row=stmt.executeUpdate(); // it returns no of rows affected.
			
			if(row>0)
			{
				response.sendRedirect("addpurchase-success.jsp");  
			}else{  
			response.sendRedirect("error1.jsp");  
			}  
			
			
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		
		
	}

}
