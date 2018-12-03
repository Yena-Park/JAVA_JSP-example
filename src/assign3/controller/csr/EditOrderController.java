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
import assign3.DAO.OrderDAO;
import assign3.DAO.ShoeDAO;
import assign3.model.Customer;
import assign3.model.Order;
import assign3.model.Shoe;

/**
 * Servlet implementation class EditOrderController
 */
@WebServlet("/EditOrderController")
public class EditOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditOrderController() {
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
		String status = request.getParameter("status");
		
		String buttonType = request.getParameter("button");
		
		if(buttonType.equals("Edit Order")) {
			OrderDAO.UpdateOrderStatusById(orderId, status);
		} else if (buttonType.equals("Delete Order")) {
			OrderDAO.deleteById(orderId);
		} else {
			
		}
		List<Order> orders = OrderDAO.getOrdersByCustomerId(customerId);
		Customer customer = CustomerDAO.getCustomerById(customerId);
		request.setAttribute("orders", orders);
		request.setAttribute("customer", customer);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CSRViewOrders.jsp");
		dispatcher.forward(request, response);
	}

}
