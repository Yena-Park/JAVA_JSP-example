package assign3.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import assign3.DAO.CsrDAO;
import assign3.DAO.CustomerDAO;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
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
	
		if(request.getParameter("userType").equals("Customer")) {
			String userName = 
					request.getParameter("userName");
			String passWord = 
					request.getParameter("passWord");
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
			
			CustomerDAO customerDAO = new CustomerDAO();
			int result = customerDAO.addCustomerRow(userName, passWord, firstName, lastName, address, city, postalCode);
			System.out.println(result);
			

			if (result > 0) {
				response.sendRedirect("HomePage.jsp");
			} else {
				//TODO: error message
			}
		} else if(request.getParameter("userType").equals("CSR")) {
			String userName = 
					request.getParameter("userName");
			String passWord = 
					request.getParameter("passWord");
			String firstName = 
					request.getParameter("firstName");
			String lastName = 
					request.getParameter("lastName");
			
			CsrDAO csrDAO = new CsrDAO();
			int result = csrDAO.addCSRRow(userName, passWord, firstName, lastName);
			System.out.println(result);
			
			if (result > 0) {
				response.sendRedirect("HomePage.jsp");
			} else {
				//TODO: error message
			}
		}
		
	}

}
