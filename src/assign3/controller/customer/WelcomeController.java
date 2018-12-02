package assign3.controller.customer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import assign3.DAO.ShoeDAO;
import assign3.model.Shoe;

/**
 * Servlet implementation class WelcomeController
 */
@WebServlet("/WelcomeController")
public class WelcomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WelcomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Shoe> shoes = ShoeDAO.getAll();
		
		List<Shoe> menShoes = new ArrayList<Shoe>();
		List<Shoe> womenShoes = new ArrayList<Shoe>();
		List<Shoe> kidShoes = new ArrayList<Shoe>();
		
		for(int i = 0; i < shoes.size(); i++) {
			if("Men".equals(shoes.get(i).getCategory())) {
				menShoes.add(shoes.get(i));
			} else if("Women".equals(shoes.get(i).getCategory())) {
				womenShoes.add(shoes.get(i));
			} else if("Kid".equals(shoes.get(i).getCategory())) {
				kidShoes.add(shoes.get(i));
			}
		}
		
		request.setAttribute("menShoes", menShoes);
		request.setAttribute("womenShoes", womenShoes);
		request.setAttribute("kidShoes", kidShoes);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CUSTWelcome.jsp");
		dispatcher.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
