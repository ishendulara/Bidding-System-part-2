package bid.sell;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EventUpdateServlet")
public class EventUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String product = request.getParameter("product");	
		String duration = request.getParameter("duration");
		
		boolean isTrue;
		
		isTrue = EventDBUtil.updateEvent(name, address, phone, product,duration);
		if(isTrue == true)
		{
			List<seller> cusDetails = EventDBUtil.geteventDetails(name);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("View.jsp");
			dis.forward(request, response);
		}
		else
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('Unsuccessful');");
			out.println("location='Update.jsp'");
			out.println("</script>");
		}
	}

}
