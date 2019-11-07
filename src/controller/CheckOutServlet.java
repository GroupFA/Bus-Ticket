package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Bus;
import entities.Users;
import model.AccountModel;
import model.BusModel;

/**
 * Servlet implementation class CheckOutServlet
 */
@WebServlet("/CheckOutServlet")
public class CheckOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckOutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String idBus = request.getParameter("idBus");
		String idUser = request.getParameter("idUser");
		BusModel busModel = new BusModel();
		AccountModel accountModel = new AccountModel();
		Users user = accountModel.getIdUser(Integer.parseInt(idUser));
		request.setAttribute("user", user);
		Bus bus = busModel.getIdBus(Integer.parseInt(idBus));
	        request.setAttribute("bus",bus );
	        request.getRequestDispatcher("/WEB-INF/view/viewCustomer/checkout.jsp").forward(request, response); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int idBus = Integer.parseInt(request.getParameter("idBus"));
//		String departure = request.getParameter("departure");
//		String destination = request.getParameter("destination");
//		String time = request.getParameter("time");
//		String price = request.getParameter("price");
//		String date = request.getParameter("bday");
//		String phone = request.getParameter("phone");
//		HttpSession session = request.getSession();
//		
//	Users idUser = (Users) session.getAttribute("userlogin");
//	session.setAttribute("date",date);
//       BusModel busModel = new BusModel();
//       boolean result =busModel.booking(departure, destination, time, price,date, idBus,idUser.getIdUser(),phone);
		
	}

}
