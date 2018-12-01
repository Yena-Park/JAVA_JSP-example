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
import assign3.model.Customer;
import assign3.model.Order;

/**
 * Servlet implementation class ManageCustomerServlet
 */
@WebServlet("/ManageCustomerServlet")
public class ManageCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Customer> customers = CustomerDAO.getAll();
		request.setAttribute("customers", customers);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CSRManagingCustomer.jsp");
		dispatcher.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int customerId = Integer.parseInt(request.getParameter("customerId"));
		
		if("View".equals(request.getParameter("button"))) {
			//request.getParameter
			Customer customer = CustomerDAO.getCustomerById(customerId);
			
			request.setAttribute("customer", customer);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CSRViewCustomer.jsp");
			dispatcher.forward(request, response);
		} else if ("Edit".equals(request.getParameter("button"))) {
			Customer customer = CustomerDAO.getCustomerById(customerId);
			request.setAttribute("customer", customer);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CSREditCustomerForm.jsp");
			dispatcher.forward(request, response);
		} else if ("Delete".equals(request.getParameter("button"))) {
			int result = CustomerDAO.deleteCustomer(customerId);
			
			if( customerId == result ) {
				// reload
				doGet(request, response);
			}
		} else if ("Manage Order".equals(request.getParameter("button"))) {
			List<Order> orders = OrderDAO.getOrdersByCustomerId(customerId);
			Customer customer = CustomerDAO.getCustomerById(customerId);
			request.setAttribute("orders", orders);
			request.setAttribute("customer", customer);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CSRViewOrders.jsp");
			dispatcher.forward(request, response);
		}
	}

}
