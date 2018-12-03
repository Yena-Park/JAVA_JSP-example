package assign3.controller.customer;

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
 * Servlet implementation class MyPageController
 */
@WebServlet("/MyPageController")
public class MyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("TODO: My Page, View personal info, order list").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int customerId = Integer.parseInt(request.getParameter("customerId"));
		
		Customer customer = CustomerDAO.getCustomerById(customerId);
		List<Order> orders = OrderDAO.getOrdersByCustomerId(customerId);
		
		request.setAttribute("customer", customer);
		request.setAttribute("orders", orders);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CUSTMyPage.jsp");
		dispatcher.forward(request, response);
	}

}
