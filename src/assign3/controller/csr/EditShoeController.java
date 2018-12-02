package assign3.controller.csr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import assign3.DAO.ShoeDAO;

/**
 * Servlet implementation class EditShoeController
 */
@WebServlet("/EditShoeController")
public class EditShoeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditShoeController() {
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
		
		String viewType = request.getParameter("viewType");
		
		String itemName = 
				request.getParameter("itemName");
		String category = 
				request.getParameter("category");
		int shoeSize = 
				Integer.parseInt(request.getParameter("shoeSize"));
		int price = 
				Integer.parseInt(request.getParameter("price"));
		int itemId = 
				Integer.parseInt(request.getParameter("itemId"));
		
		int result = -1;
		if ("Add Shoe".equals(viewType)) {
			result = ShoeDAO.insertShoe(itemName, category, shoeSize, price);
			response.sendRedirect("ManageProductController");
		} else  {
			result = ShoeDAO.updateShoeById(itemId, itemName, category, shoeSize, price);
			if ( result == itemId ) {
				response.sendRedirect("ManageProductController");
			} else {
				//TODO: error message
			}
		}
		
	}

}
