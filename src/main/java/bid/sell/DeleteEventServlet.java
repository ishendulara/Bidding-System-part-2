package bid.sell;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteEventServlet")
public class DeleteEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("Name");
		
		Boolean isTrue;
		
		isTrue = EventDBUtil.deteleEvent(name);
		
		if(isTrue == true)
		{
			RequestDispatcher dispather = request.getRequestDispatcher("Create.jsp");
			dispather.forward(request, response);
		}
		else
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('Unsuccessful');");
			out.println("location='Delete.jsp'");
			out.println("</script>");
		}
		
	}

}
