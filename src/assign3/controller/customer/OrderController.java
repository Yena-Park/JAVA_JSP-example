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
 * Servlet implementation class OrderController
 */
@WebServlet("/OrderController")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("TODO: Order Page, Select quantity").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String From = request.getParameter("jsp");
		
		if(From.equals("CUSTMyPage")) {
			String submitType = request.getParameter("submit");
			int orderId = Integer.parseInt(request.getParameter("orderId"));
			if("Edit Order".equals(submitType)) {
				int quantity = Integer.parseInt(request.getParameter("quantity"));
				OrderDAO.UpdateOrderQuantityById(orderId, quantity);
			} else {
				OrderDAO.deleteById(orderId);				
			}

			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/MyPageController");
			dispatcher.forward(request, response);
		} else if(From.equals("CUSTWelcome") && request.getParameter("customerId") != "") {
			int itemId = Integer.parseInt(request.getParameter("itemId"));
			int customerId = Integer.parseInt(request.getParameter("customerId"));
			int quantity = 1;
			OrderDAO.addOrder(customerId, itemId, quantity);

			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/MyPageController");
			dispatcher.forward(request, response);
		} else {
			response.getWriter().append("Please login.").append(request.getContextPath());
		}
	}

}
