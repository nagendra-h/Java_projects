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
 * Servlet implementation class servlet1
 */
@WebServlet("/servlet1")
public class servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pc=response.getWriter();
		HttpSession s=request.getSession();

		String s1=(String) s.getAttribute("k");
		String s2=(String) s.getAttribute("j");
		
		//String n1=(String)request.getParameter("k"+"j");
		//int n2=Integer.parseInt(request.getParameter("j"));
		//System.out.println(s1+s2);
		pc.println("finally yes bro"+s1+s2);
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		RequestDispatcher rd=request.getRequestDispatcher("login.html");
//		rd.forward(request, response);
//		
	}

}
