package assign3.controller.csr;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import assign3.DAO.CustomerDAO;
import assign3.DAO.ShoeDAO;
import assign3.model.Shoe;

/**
 * Servlet implementation class ManageProductController
 */
@WebServlet("/ManageProductController")
public class ManageProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Shoe> shoes = ShoeDAO.getAll();
		request.setAttribute("shoes", shoes);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CSRManagingProduct.jsp");
		dispatcher.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int itemId = -1;
		
		if("View".equals(request.getParameter("button"))) {
			itemId = Integer.parseInt(request.getParameter("itemId"));
			//request.getParameter
			Shoe shoe = ShoeDAO.getShoeById(itemId);
			request.setAttribute("shoe", shoe);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CSRViewProduct.jsp");
			dispatcher.forward(request, response);
		} else if ("Add".equals(request.getParameter("button"))) {
			Shoe shoe = new Shoe();
			shoe.isNew = true;
			request.setAttribute("shoe", shoe);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CSREditProductForm.jsp");
			dispatcher.forward(request, response);
		} else if ("Edit".equals(request.getParameter("button"))) {
			itemId = Integer.parseInt(request.getParameter("itemId"));
			Shoe shoe = ShoeDAO.getShoeById(itemId);
			shoe.isNew = false;
			request.setAttribute("shoe", shoe);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CSREditProductForm.jsp");
			dispatcher.forward(request, response);
		} else if ("Delete".equals(request.getParameter("button"))) {
			itemId = Integer.parseInt(request.getParameter("itemId"));
			int result = ShoeDAO.deleteById(itemId);
			if( itemId == result ) {
				// reload
				doGet(request, response);
			}
		}
	}

}
