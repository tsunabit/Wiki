package wiki;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CreateValidation extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		
		System.out.println(name);
		
		if(name == null || name.length() == 0) {
			// ここの書き方が冗長
			RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/InputError.jsp");
			dispatcher.forward(request, response);
		}else {
			// request.setAttribute("name", name);
			// ここの書き方が冗長
			RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/createPageContent.jsp");
			dispatcher.forward(request, response);
		}
	}

}
