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
import model.BusModel;

/**
 * Servlet implementation class ShowAllBusServlet2
 */
@WebServlet("/ShowAllBus2")
public class ShowAllBusServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowAllBusServlet2() {
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
		ArrayList<Bus> listBus = BusModel.getListBus();
		
		
		request.setAttribute("idBus", listBus);

		request.getRequestDispatcher("/WEB-INF/view/viewSeller/indexSeller.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
	//doGet(request, response);
		String date = request.getParameter("seatDate");
		String idBus = request.getParameter("idBusH");
		
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("seatDate1", date);
		response.sendRedirect(request.getContextPath()+"/ShowSeatServet?idBusH="+idBus+"&&date="+date);
	}

}
