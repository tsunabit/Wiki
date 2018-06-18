package wiki;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreatePageNameServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// requestにセットする情報が無いため一旦Nothingとする
			request.setAttribute("request", "Nothing");
			request.getRequestDispatcher("/jsp/createPageName.jsp").forward(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
	

}
