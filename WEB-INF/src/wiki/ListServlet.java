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
			List<WikiPageDTO> list;
			
			String para = "";
			if("updateDesc".equals(request.getParameter("updateDesc"))) {
//				para = request.getParameter("updateDesc");
//				List<WikiPageDTO> 
				list = WikiPageDAO.getInstance().findALL_UTD();
			}else if("updateAsc".equals(request.getParameter("updateAsc"))) {
//				para = request.getParameter("updateAsc");
//				List<WikiPageDTO> 
				list = WikiPageDAO.getInstance().findALL_ASC();
			}else {
//				para = "no";
//				List<WikiPageDTO> 
				list = WikiPageDAO.getInstance().findALL();
			}
//			System.out.println("para = " + para);
			
//			List<WikiPageDTO> list = WikiPageDAO.getInstance().findALL();
			request.setAttribute("list", list);
			request.getRequestDispatcher("/jsp/list.jsp").forward(request, response);
		} catch(SQLException e) {
			throw new ServletException(e);
		}
	}
}
