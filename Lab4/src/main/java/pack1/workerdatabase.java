package pack1;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import pack1.worker;  

public class workerdatabase {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	    	Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/java1","root","root");  
			      
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(worker u){  
	    int status=0;  
	    try{  

	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into worker values(?,?,?,?,?)");  
	        ps.setString(1,u.getId());  
	        ps.setString(2,u.getName());  
	        ps.setString(3,u.getEmail());  
	        ps.setLong(4,u.getPhoneno());  
	        ps.setString(5,u.getPassword());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(worker u){  
	    int status=0;  
	    try{  

	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update worker set name=?,email=?,phoneno=? where id=?");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getEmail());  
	        ps.setLong(3,u.getPhoneno());  
	        ps.setString(4,u.getPassword());  
	        ps.setString(5,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(worker u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from worker where id=?");  
	        ps.setString(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static boolean validate(String id,String pass){  
	    boolean status=false;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select id,password from worker where id=? and password=?");  
	        ps.setString(1,id);
	        ps.setString(2,pass);
	        ResultSet rs=ps.executeQuery();
	        if(rs.next()) {
	        	status=true;
	        }
	    }catch(Exception e){System.out.println(e);} 
	    
	    return status;
	  
	      
	}
	public static List<worker> getAllRecords(){  
	    List<worker> list=new ArrayList<worker>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from worker");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            worker u=new worker();  
	            u.setId(rs.getString("id"));  
	            u.setName(rs.getString("name"));  
	            u.setEmail(rs.getString("email"));  
	            u.setPhoneno(rs.getLong("phoneno"));  
	            u.setPassword(rs.getString("password"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    System.out.println(list);
	    return list;  
	}  
	public static List<worker> getRecordById(String id){  
	    List<worker> list=new ArrayList<worker>();  

	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from worker where id=?");  
	        ps.setString(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            worker u=new worker();  
	            u.setId(rs.getString("id"));  
	            u.setName(rs.getString("name"));  
	            u.setEmail(rs.getString("email"));  
	            u.setPhoneno(rs.getLong("phoneno"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	
}
