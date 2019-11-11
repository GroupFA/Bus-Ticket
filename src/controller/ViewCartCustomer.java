package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Ticket;
import model.TicketModel;

/**
 * Servlet implementation class ViewCartCustomer
 */
@WebServlet("/ViewCartCustomer")
public class ViewCartCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewCartCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String idUser = request.getParameter("idUser");
		HttpSession session =request.getSession();
		int idUser = (int) session.getAttribute("idUser");
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println(idUser+"jjjjj");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8"); 
		TicketModel ticketModel = new TicketModel();
		ArrayList<Ticket> list = ticketModel.getOneUserListTickets(idUser);
		request.setAttribute("ticket", list); 
		System.out.println(list + "alo");
		 request.getRequestDispatcher("/WEB-INF/view/viewCustomer/viewCartCustomer.jsp").forward(request, response); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
