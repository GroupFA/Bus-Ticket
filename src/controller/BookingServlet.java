package controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

import entities.Bus;
import entities.Seat;
import entities.SeatWithStatus;
import entities.Users;
import model.AccountModel;
import model.BusModel;
import model.TicketModel;

/**
 * Servlet implementation class Booking
 */
@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BookingServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String id = request.getParameter("idBus");
		int idBus = Integer.parseInt(id);
		Users user = (Users) session.getAttribute("userlogin");
		int idUser = user.getIdUser();
//		 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
//		   LocalDateTime now = LocalDateTime.now();
//		   
//		   String date = dtf.format(now);
		String date = request.getParameter("date");
		request.setAttribute("date", date);
		System.out.println(date);
		Bus bus = BusModel.getIdBus(idBus);
		ArrayList<Seat> listSeat = BusModel.getListBusSeat(idBus);
		System.out.println("1" + listSeat.size());
		for (Seat seat : listSeat) {
			seat.setStatus(false);
			if (TicketModel.checkIdSeatAndDate(seat.getIdSeat(), date)) {
				seat.setStatus(true);
			}
		}
		System.out.println("2" + listSeat.size());
		request.setAttribute("listseat", listSeat);

		request.setAttribute("bus", bus);

		request.getRequestDispatcher("/WEB-INF/view/viewCustomer/Booking.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idBus = request.getParameter("idBus");
		String departure = request.getParameter("departure");
		String destination = request.getParameter("destination");
		String time = request.getParameter("time");
		String price = request.getParameter("price");
		String date = request.getParameter("date");
		String[] n = request.getParameterValues("n");
		String status ="1";
		HttpSession session = request.getSession();
		Users idUser = (Users) session.getAttribute("userlogin");
		for (String string : n) {
			BusModel busModel = new BusModel();
			boolean result = BusModel.booking(departure, string, destination, time, price, date,
					Integer.parseInt(idBus), idUser.getIdUser(),status);
		}

		session.setAttribute("date", date);
		session.setAttribute("price", price);

		response.sendRedirect(
				request.getContextPath() + "/CheckOutServlet?idBus=" + idBus + "&idUser=" + idUser.getIdUser());
	}

}
