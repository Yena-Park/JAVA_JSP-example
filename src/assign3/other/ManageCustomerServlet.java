package assign3.other;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import assign3.DAO.CustomerDAO;
import assign3.model.Customer;

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
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ManagingCustomer.jsp");
		dispatcher.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if("View".equals(request.getParameter("button"))) {
			//request.getParameter
		} else if ("Edit".equals(request.getParameter("button"))) {
			
		} else if ("Delete".equals(request.getParameter("button"))) {
			
		}
		
	}

}
