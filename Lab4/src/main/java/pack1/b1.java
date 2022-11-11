package pack1;
import pack1.purchase.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class b1 {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	    	Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/java1","root","root");  
			      
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}
	public static List<billing1> getAll2(){  
	    List<billing1> list=new ArrayList<billing1>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select distinct(wid),qty,wname from billing1 order by qty desc");
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	billing1 u =new billing1();
	            u.setWid(rs.getString("wid")); 
	            u.setQty(rs.getInt("qty"));
	            u.setWname(rs.getString("wname"));
	           
	            list.add(u);
	        }  
	    }catch(Exception e){System.out.println(e);} 
	    System.out.println(123);
	    System.out.println(list + "88");
	    return list;
	    
	    
	}  
	
	public static List<billing1> getAll3(){  
	    List<billing1> list=new ArrayList<billing1>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select wid,wname,qty,price from billing1 where price between 500 and 1000");
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	billing1 u =new billing1();
	            u.setWid(rs.getString("wid")); 
	            u.setQty(rs.getInt("qty"));
	            u.setWname(rs.getString("wname"));
	            u.setPrice(rs.getDouble("price"));
	           
	            list.add(u);
	        }  
	    }catch(Exception e){System.out.println(e);} 
	    System.out.println(123);
	    System.out.println(list + "88");
	    return list;
	}  
	public static List<billing1> getAll4(){  
	    List<billing1> list=new ArrayList<billing1>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select cid,cname,price from billing1 where price in(select max(price) from billing1)");
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	billing1 u =new billing1();
	            u.setCid(rs.getString("cid")); 
	            u.setPrice(rs.getDouble("price"));
	            u.setCname(rs.getString("cname"));
	           
	           
	            list.add(u);
	        }  
	    }catch(Exception e){System.out.println(e);} 
	    System.out.println(123);
	    System.out.println(list + "88");
	    return list;
	}  
	
	public static List<billing1> getAll5(){  
	    List<billing1> list=new ArrayList<billing1>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select cid,cname,wname,qty,date2 from billing1 where date2=(select max(date2) from billing1)");
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	billing1 u =new billing1();
	            u.setCid(rs.getString("cid")); 
	            u.setWname(rs.getString("wname"));
	            u.setCname(rs.getString("cname"));
	            u.setQty(rs.getInt("qty"));
	            u.setDate2(rs.getString("date2"));
	            list.add(u);
	        }  
	    }catch(Exception e){System.out.println(e);} 
	    System.out.println(123);
	    System.out.println(list + "88");
	    return list; 
	}  
	
	public static List<billing1> getAll6(){  
	    List<billing1> list=new ArrayList<billing1>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select cid,cname,age from billing1 where age between 20 and 22");
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	billing1 u =new billing1();
	            u.setCid(rs.getString("cid")); 
	            
	            u.setCname(rs.getString("cname"));
	            u.setAge(rs.getInt("age"));
	           
	            list.add(u);
	        }  
	    }catch(Exception e){System.out.println(e);} 
	    System.out.println(123);
	    System.out.println(list + "88");
	    return list; 
	}  
	
	
	public static int getId(String id){  
int m=0;
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select count(*) as d1 from billing1 where date2=?");  
	        ps.setString(1,id); 
	        ResultSet rs=ps.executeQuery(); 
	        
	        rs.next()  ;
	            User u=new User();  
	             m=(rs.getInt("d1"));
	            
	    }catch(Exception e){System.out.println(e);}  
	    return m;  
	}  
	
	
}
