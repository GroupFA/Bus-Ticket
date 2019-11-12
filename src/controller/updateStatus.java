package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.TicketModel;

/**
 * Servlet implementation class updateStatus
 */
@WebServlet("/updateStatus")
public class updateStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateStatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		TicketModel ticketModel = new TicketModel();
		HttpSession session = request.getSession();
		String idTicket = request.getParameter("idTicket");
		System.out.println(idTicket+"day la id");
		String status = "0";
		try {
			boolean result = ticketModel.updateStatus(idTicket, status);
			System.out.println(ticketModel.updateStatus(idTicket, status));
		} catch (Exception e) {
			System.out.println(e);
		}
		response.sendRedirect(request.getContextPath() + "/ShowAllTicket");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
