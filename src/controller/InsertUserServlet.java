package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AccountModel;

/**
 * Servlet implementation class InsertUserServlet
 */
@WebServlet("/InsertUserServlet")
public class InsertUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertUserServlet() {
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
	
		request.getRequestDispatcher("/WEB-INF/view/viewAdmin/InsertUser.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String fullName = request.getParameter("fullname");
		String email = request.getParameter("email");
		String value[] = request.getParameterValues("gender");
		String address = request.getParameter("address");
		String phoneNum = request.getParameter("phoneNum");
		String valueRole [] = request.getParameterValues("role");
		
		System.out.println(fullName +"gggg");
	
		AccountModel ac = new AccountModel();
		boolean result =ac.insertUser(username, password, fullName, value, address, phoneNum, valueRole, email);
		System.out.println(result+"hellloleloeoeleleoel");
	response.sendRedirect(request.getContextPath()+"/showAllUser");
//		doGet(request, response);
//		request.getRequestDispatcher("/WEB-INF/view/viewAdmin/InsertUser.jsp").forward(request, response);
	}

}
