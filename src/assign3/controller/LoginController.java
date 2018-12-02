package assign3.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import assign3.DAO.CsrDAO;
import assign3.DAO.CustomerDAO;
import assign3.model.CSR;
import assign3.model.Customer;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		String userId = 
				request.getParameter("userId");
		String passWord = 
				request.getParameter("userPw");
		
		if(request.getParameter("userType").equals("Customer")) {
			Customer customer = CustomerDAO.login(userId, passWord);
			 if (customer.isValid())
		     {
		          HttpSession session = request.getSession(true);	    
		          session.setAttribute("currentCustomer",customer); 
		          response.sendRedirect("WelcomeController"); // customer logged-in page      		
		     } else {
		    	 response.sendRedirect("invalidLogin.jsp");
		     }
		} else {
			CSR csr = CsrDAO.login(userId, passWord);
			if (csr.isValid()) {
				HttpSession session = request.getSession(true);	    
				session.setAttribute("currentCSR",csr); 
				response.sendRedirect("CSRMenu.jsp"); // csr logged-in page
			} else {
				response.sendRedirect("invalidLogin.jsp");
			}
		}
	}

}
