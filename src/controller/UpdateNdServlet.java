package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Users;
import model.AccountModel;

/**
 * Servlet implementation class UpdateNdServlet
 */
@WebServlet("/UpdateNdServlet")
public class UpdateNdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNdServlet() {
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
		int idUser = Integer.parseInt(request.getParameter("idUser"));
		AccountModel ac = new AccountModel();
		Users users = ac.getIdUser(idUser);
		request.setAttribute("user", users);
		request.getRequestDispatcher("/WEB-INF/view/viewCustomer/UpdateCustomer.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idUser = Integer.parseInt(request.getParameter("idUser"));
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String fullName = request.getParameter("fullname");
		String email = request.getParameter("email");
		String value[] = request.getParameterValues("gender");
		String address = request.getParameter("address");
		String phoneNum = request.getParameter("phoneNum");
		String valueRole [] = request.getParameterValues("role");
		
		AccountModel ac = new AccountModel();
		boolean result =ac.updateUser(username, password, fullName, value, address, phoneNum, valueRole, email, idUser);
//		response.sendRedirect(request.getContextPath()+"/hienThongtinnguoidung.jsp");
		response.sendRedirect(request.getContextPath() +"/ShowNdUpdateServlet?idUser="+idUser);
	}

}
