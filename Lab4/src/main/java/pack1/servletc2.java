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
 * Servlet implementation class servletc2
 */
@WebServlet(name = "servlerc2", urlPatterns = { "/servlerc2" })
public class servletc2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String n=(String) request.getParameter("name");
		String n1=(String) request.getParameter("password");
		PrintWriter pc=response.getWriter();

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
				
	}

}
