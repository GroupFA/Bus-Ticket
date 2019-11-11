package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Bus;
import entities.Users;
import model.BusModel;

/**
 * Servlet implementation class ShowAllBus
 */
@WebServlet("/ShowAllBus")
public class ShowAllBusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowAllBusServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String date = request.getParameter("date");
		String idBus = request.getParameter("idBus");
		HttpSession session = request.getSession();
		Users idUser = (Users) session.getAttribute("userlogin");
		ArrayList<Bus> listBus = BusModel.getListBus();
		
		
		request.setAttribute("idBus", listBus);
		session.setAttribute("date",date);
		
		request.getRequestDispatcher("/WEB-INF/view/viewCustomer/indexCustomer.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String date = request.getParameter("date");
		String idBus = request.getParameter("idBus");
		HttpSession session = request.getSession();
		Users idUser = (Users) session.getAttribute("userlogin");
		session.setAttribute("date",date);
		response.sendRedirect(request.getContextPath()+"/BookingServlet?idBus="+idBus +"&idUser="+ idUser.getIdUser()+"&date="+date);
	}

}
