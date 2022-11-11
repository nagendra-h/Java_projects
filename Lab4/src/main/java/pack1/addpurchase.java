package pack1;

import java.io.IOException;

import pack1.purchase.*;
import pack1.billing1.*;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class addpurchase {
	public static List<purchase> getAllRecords(){  
	    List<purchase> list=new ArrayList<purchase>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select id,wid,wname,qty,price from purchase3 where qty >(0)");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            purchase u=new purchase();  
	            u.setId(rs.getString("id"));
	            u.setWid(rs.getString("wid"));  
	            u.setWname(rs.getString("wname"));  
	            u.setQty(rs.getInt("qty"));  
	            u.setPrice(rs.getLong("price"));  
	            list.add(u);
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    System.out.println(list);
	    return list;  
	}  
	public static List<purchase> getAllRecords(String n){  
	    List<purchase> list=new ArrayList<purchase>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from purchase3 where wid=?");
	        ps.setString(1,n);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            purchase u=new purchase();  
	       
	            u.setId(rs.getString("id")); 
	            u.setWid(rs.getString("wid"));  
	            u.setWname(rs.getString("wname"));
	            u.setQty(rs.getInt("qty"));  
	            u.setPrice(rs.getLong("price"));  
	            
	            list.add(u);
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    System.out.println(list);
	    return list;  
	}  
	
	public static List<purchase> getAll1(){  
	    List<purchase> list=new ArrayList<purchase>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select distinct id,wname from purchase3 where id in (select max(id) from purchase3)");
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            purchase u=new purchase();  
	       
	            u.setId(rs.getString("id")); 
	            u.setWname(rs.getString("wname"));
	            
	            list.add(u);
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    System.out.println(list);
	    return list;  
	}  
	

	public static int getAll7(){  
	    int m=0;
	      
	    try{  
	    	Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select count(*) as id1 from purchase3");  
	        
	        ResultSet rs=ps.executeQuery();  
	        rs.next()  ;
	            purchase u=new purchase();  
	             m=(rs.getInt("id1"));
	            
	    }catch(Exception e){System.out.println(e);}  
	    return m;  
	}  
	
	
	
	
	// ============billing111-
	
	
	
	
	
	
	public static List<purchase> getAllRecords1(){  
	    List<purchase> list=new ArrayList<purchase>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from purchase3 ");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            purchase u=new purchase();  
	            u.setId(rs.getString("id"));
	            u.setWid(rs.getString("wid"));  
	            u.setWname(rs.getString("wname"));
	            u.setQty(rs.getInt("qty"));  
	            u.setPrice(rs.getLong("price"));  
	            u.setDate1(rs.getString("date1"));
	            list.add(u);
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    System.out.println(list);
	    return list;  
	}  
	
	public static int update(purchase u){  
	     int status=0; 
	    try{  

	        Connection con=getConnection();  
	        String q="update purchase3 set id=?,wname=?,qty=?,price=? where wid=?";
	        PreparedStatement ps=con.prepareStatement(q);  
	        ps.setString(1,u.getId());  
	        ps.setString(2,u.getWname());
	        ps.setInt(3,u.getQty());  
	        ps.setLong(4,u.getPrice());  
	        ps.setString(5,u.getWid());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);} 
	   
	    System.out.println(100);
	    System.out.println(status);
	    return status;  
	}  
	public static int delete(purchase u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from purchase3 where wid=?");  
	        ps.setString(1,u.getWid());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	    	Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/java1","root","root");  
			      
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  

}
