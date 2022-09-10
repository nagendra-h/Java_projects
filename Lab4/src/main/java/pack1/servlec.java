package pack1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servlec
 */
@WebServlet("/servlec")
public class servlec extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servlec() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setIntHeader("Refersh",1);
		PrintWriter pc=response.getWriter();
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		if(database1.validate(name,password)) {
			pc.println("fucking success");
		}
		else {
			pc.println("bitch no");
		}
		if(name.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
			pc.println("YES");
		}
		else {
			pc.println("NO");
		}
	}

}
