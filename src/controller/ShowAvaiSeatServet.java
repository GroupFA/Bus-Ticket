package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Seat;
import model.SeatDao;

/**
 * Servlet implementation class ShowSeatServet
 */
@WebServlet("/ShowSeatServet")
public class ShowAvaiSeatServet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowAvaiSeatServet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String idBus = request.getParameter("idBusH");
		String date = request.getParameter("date");
		System.out.println(date+"ngay "+idBus);
		SeatDao seatDao = new SeatDao();
		
		List<Seat> listSeats = new ArrayList<Seat>();
		
		try {
			listSeats = seatDao.findSeatByDateTrip(idBus, date );
			System.out.println(listSeats);
			request.setAttribute("ListSeat", listSeats);
		} catch (Exception e) {
			// TODO: handle exception
		}
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/view/viewSeller/seatbooking.jsp");
		dispatcher.forward(request, response);
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
