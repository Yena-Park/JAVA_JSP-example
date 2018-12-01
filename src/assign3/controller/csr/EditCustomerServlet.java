package assign3.controller.csr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import assign3.DAO.CustomerDAO;

/**
 * Servlet implementation class EditCustomerServlet
 */
@WebServlet("/EditCustomerServlet")
public class EditCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditCustomerServlet() {
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
		
		String userName = 
				request.getParameter("userName");
		String passWord = 
				request.getParameter("password");
		String firstName = 
				request.getParameter("firstName");
		String lastName = 
				request.getParameter("lastName");
		String address = 
				request.getParameter("address");
		String city = 
				request.getParameter("city");
		String postalCode = 
				request.getParameter("postalCode");
		int customerId = Integer.parseInt(request.getParameter("customerId"));
		
		int result = CustomerDAO.updateCustomerById(customerId, userName, passWord, firstName, lastName, address, city, postalCode);
		System.out.println(result);
		if (result == customerId) {
			response.sendRedirect("ManageCustomerServlet");
		} else {
			//TODO: error message
		}
		
	}

}
