package assign3.controller.csr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import assign3.DAO.ShoeDAO;

/**
 * Servlet implementation class EditShoeServlet
 */
@WebServlet("/EditShoeServlet")
public class EditShoeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditShoeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String itemName = 
				request.getParameter("itemName");
		String category = 
				request.getParameter("category");
		String shoeSize = 
				request.getParameter("shoeSize");
		int price = 
				Integer.parseInt(request.getParameter("price"));
		int itemId = 
				Integer.parseInt(request.getParameter("itemId"));
		
		int result = ShoeDAO.updateShoeById(itemId, itemName, category, shoeSize, price);
		
		if ( result == itemId ) {
			response.sendRedirect("ManageProductServlet");
		} else {
			//TODO: error message
		}
	}

}
