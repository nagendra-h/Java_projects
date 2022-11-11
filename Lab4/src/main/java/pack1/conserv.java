package pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class conserv
 */
@WebServlet("/conserv")
public class conserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public conserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		if(name.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
			HttpSession ses=request.getSession();
			ses.setAttribute("name", name);
			ses.setAttribute("password",password);
			response.sendRedirect("login.html");
			
		}
		else {
			response.sendRedirect("newlab.html");
		}

	}

}
