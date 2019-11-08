package controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

import entities.Bus;
import entities.Users;
import model.AccountModel;
import model.BusModel;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String id =request.getParameter("idBus");
		int idBus = Integer.parseInt(id);
		
		 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		   LocalDateTime now = LocalDateTime.now();
		   
		   String date = dtf.format(now);
		   request.setAttribute("date", date);
		   ///
		Bus bus = BusModel.getIdBus(idBus);
		request.setAttribute("bus", bus);
		
		request.getRequestDispatcher("/WEB-INF/view/viewCustomer/Booking.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idBus = Integer.parseInt(request.getParameter("idBus"));
		String departure = request.getParameter("departure");
		String destination = request.getParameter("destination");
		String kilomet = request.getParameter("kilomet");
		String time = request.getParameter("time");
		String price = request.getParameter("price");
		String date = request.getParameter("bday");
		HttpSession session = request.getSession();
		
	Users idUser = (Users) session.getAttribute("userlogin");
	session.setAttribute("date",date);
	session.setAttribute("price", price);
//		BusModel busModel = new BusModel();
//		boolean result =busModel.booking(departure, destination, kilomet, time, price,date, idBus,idUser.getIdUser());
		response.sendRedirect(request.getContextPath() +"/CheckOutServlet?idBus="+idBus +"&idUser="+ idUser.getIdUser());
	}

}
