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
import assign3.model.Customer;
import assign3.model.Shoe;

/**
 * Servlet implementation class ManageProductServlet
 */
@WebServlet("/ManageProductServlet")
public class ManageProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageProductServlet() {
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
		int itemId = Integer.parseInt(request.getParameter("itemId"));
		
		if("View".equals(request.getParameter("button"))) {
			//request.getParameter
//			Customer customer = CustomerDAO.getCustomerById(customerId);
//			
//			request.setAttribute("customer", customer);
//			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CSRViewCustomer.jsp");
//			dispatcher.forward(request, response);
		} else if ("Add".equals(request.getParameter("button"))) {
			//
			
		} else if ("Edit".equals(request.getParameter("button"))) {
//			Customer customer = CustomerDAO.getCustomerById(customerId);
//			request.setAttribute("customer", customer);
//			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CSREditCustomerForm.jsp");
//			dispatcher.forward(request, response);
		} else if ("Delete".equals(request.getParameter("button"))) {
			int result = CustomerDAO.deleteCustomer(itemId);
			
			if( itemId == result ) {
				// reload
				doGet(request, response);
			}
		}
	}

}
