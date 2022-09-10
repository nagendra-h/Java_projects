package pack1;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import pack1.User;  
public class UserDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	    	Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/java1","root","root");  
			      
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into dealer values(?,?,?,?)");  
	        ps.setString(1,u.getId());  
	        ps.setString(2,u.getName());  
	        ps.setString(3,u.getEmail());  
	        ps.setLong(4,u.getPhoneno());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(User u){  
	    int status=0;  
	    try{  

	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update dealer set name=?,email=?,phoneno=? where id=?");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getEmail());  
	        ps.setLong(3,u.getPhoneno());  
	        ps.setString(4,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from dealer where id=?");  
	        ps.setString(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<User> getAllRecords(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from dealer");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setId(rs.getString("id"));  
	            u.setName(rs.getString("name"));  
	            u.setEmail(rs.getString("email"));  
	            u.setPhoneno(rs.getLong("phoneno"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    System.out.println(list);
	    return list;  
	}  
	public static List<User> getRecordById(String id){  
	    List<User> list=new ArrayList<User>();  

	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from dealer where id=?");  
	        ps.setString(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
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
