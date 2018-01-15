package wiki;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			List<WikiPageDTO> list = WikiPageDAO.getInstance().findALL();
			request.setAttribute("list", list);
			request.getRequestDispatcher("/list.jsp").forward(request, response);
		} catch(SQLException e) {
			throw new ServletException(e);
		}
	}

}
