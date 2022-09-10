package pack1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class servletc1
 */
@WebServlet("/servletc1")
public class servletc1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletc1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.setIntHeader("Refersh",1);
		
		String n=(String) request.getParameter("name");
		String n1=(String) request.getParameter("password");

//		request.setAttribute("name",n);
//		System.out.println("hello"+n);
//		RequestDispatcher pc= request.getRequestDispatcher("first.jsp");
//		pc.forward(request, response);
		
		
		PrintWriter pc=response.getWriter();
//		pc.println("finally bro");
//		String name=request.getParameter("name");
//		String password=request.getParameter("password");
//		String n=name+password;
//		System.out.println(n);
//		String a="10";
//		System.out.println(n+a);
//		
//		// Http session++++++++++++++++++++++++++++
//		
//		HttpSession s=request.getSession();
//		s.setAttribute("k",n);
//		s.setAttribute("j", a);
//		response.sendRedirect("servlet1");
		
		//Request dispatcher+++++++++++++++++
		//request.setAttribute("k",n);
		//request.setAttribute("j",a);
		//RequestDispatcher rd=request.getRequestDispatcher("servlet1");
		//rd.forward(request, response);
		
		//databases+++++++++++++
		if(database1.validate(n,n1)) {
			HttpSession ss=request.getSession();
			ss.setAttribute("name", n);
			ss.setAttribute("password", n1);
			response.sendRedirect("first.jsp");
		}
		else {
			HttpSession ss=request.getSession();

			response.sendRedirect("login.html");
		}
		
		//without databses++++++++++
		//if(name.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
		//	pc.println("YES");
		//}
		//else {
		//	pc.println("NO");
		//}
		
		
		//First.jsp===============================
//		String n=(String) request.getParameter("name");
//		System.out.println(n);
//
//		Class.forName("com.mysql.jdbc.Driver");  
//			Connection con=DriverManager.getConnection(  
//			"jdbc:mysql://localhost:3306/java1","root","root");  
//			      
//			PreparedStatement ps=con.prepareStatement(  
//			"select * from admin where name=?");  
//			ps.setString(1,n);  
//			ResultSet rs=ps.executeQuery();
//			rs.next();
//			response.sendRedirect("welcome.html");
	}

}
