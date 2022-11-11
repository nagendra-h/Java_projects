package pack1;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.sql.*;  

import java.util.ArrayList;  
import java.util.List;  
/**
 * Servlet implementation class addbiling
 */
@WebServlet("/addbiling")
public class addbiling extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addbiling() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
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
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  try {
				String id=request.getParameter("id");
		String wid=request.getParameter("wid");
		String wname=request.getParameter("wname");
		int qty =Integer.parseInt(request.getParameter("qty"));
		double price=Double.parseDouble(request.getParameter("price"));
		String cid=request.getParameter("cid");
		String cname=request.getParameter("cname");
		String email=request.getParameter("email");
		String ctype=request.getParameter("ctype");
		String phno=request.getParameter("phno");

		int age =Integer.parseInt(request.getParameter("age"));
		String date2=request.getParameter("date2");
		  Connection con=getConnection();  
			PreparedStatement ps1=con.prepareStatement(  
					"select qty from purchase3 where id=? and wid=?");
			ps1.setString(1,id);
			ps1.setString(2,wid);

	        ResultSet rs=ps1.executeQuery();  
			System.out.println("1-done");
			
			rs.next();
			int cal=rs.getInt("qty");
			System.out.println("2-done");
	        int finalqty=cal-qty;
	        System.out.println(finalqty);
	        if(finalqty<=0) {
	        	response.sendRedirect("billingerror.jsp");
	        }
	        else {
	        			PreparedStatement ps=con.prepareStatement(  
						"update purchase3 set qty=? where wid=? and id=?");
			ps.setInt(1,finalqty);  
	        ps.setString(2,wid);  
	        ps.setString(3,id);  

	      int  status=ps.executeUpdate();
	      if(status>0) {
	    	  System.out.println("quantity updated");
	    	  Statement st=null;
	    	  String q1="insert into billing1 values('"+wid+"','"+qty+"','"+price+"','"+wname+"','"+cid+"','"+cname+"','"+phno+"','"+age+"','"+date2+"','"+id+"','"+email+"','"+ctype+"')";
				st=con.createStatement();
				System.out.println("check");
				int row=st.executeUpdate(q1);
				System.out.println("yesss");
	    	 if (row>0) {
	    		 //ps1=con.prepareStatement(  
	 				//	"select imageFileName from purchase where wname=?");
	 			//ps1.setString(1,wname);
	 			//rs=ps1.executeQuery(); 
	 			//rs.next();
	 			//String file=rs.getString("imageFileName");
	    		 RequestDispatcher rd=request.getRequestDispatcher("finalbilling.jsp");
	    		 request.setAttribute("cname",cname);
	    		 request.setAttribute("email",email);

	    		 request.setAttribute("phno",phno);
	    		 request.setAttribute("qty",qty);
	    		 request.setAttribute("price", price);
		    
		    	 rd.forward(request, response);

	    	 }
	      }
	      else {
	    	  response.sendRedirect("billingerror.jsp");
	      }
	      
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  

	}

}
