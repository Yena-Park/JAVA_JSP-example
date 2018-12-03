package assign3.controller.csr;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import assign3.DAO.CustomerDAO;
import assign3.DAO.OrderDAO;
import assign3.DAO.ShoeDAO;
import assign3.model.Customer;
import assign3.model.Order;
import assign3.model.Shoe;

/**
 * Servlet implementation class ManageOrderController
 */
@WebServlet("/ManageOrderController")
public class ManageOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageOrderController() {
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
		int orderId = Integer.parseInt(request.getParameter("orderId"));
		int customerId = Integer.parseInt(request.getParameter("customerId"));
		int itemId = Integer.parseInt(request.getParameter("itemId"));
		String buttonType = request.getParameter("button");
		
		if(buttonType.equals("Edit")) {
			Order order = OrderDAO.getOrderById(orderId);
			Customer customer = CustomerDAO.getCustomerById(customerId);
			Shoe shoe = ShoeDAO.getShoeById(itemId);
			
			request.setAttribute("order", order);
			request.setAttribute("customer", customer);
			request.setAttribute("shoe", shoe);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CSREditOrderForm.jsp");
			dispatcher.forward(request, response);
		} else if (buttonType.equals("Cancel")) {
			
		}
	}

}
