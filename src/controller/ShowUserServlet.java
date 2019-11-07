package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Users;
import model.AccountModel;

/**
 * Servlet implementation class ShowUserServlet
 */

@WebServlet("/showAllUser")

public class ShowUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		AccountModel ac = new AccountModel();
		String keySearch = request.getParameter("keySearch");
		ArrayList<Users> list = new ArrayList<>();
		if (keySearch != null) {
			list = ac.searchUser(keySearch);
		} else {
			list = ac.getListUser();
		}


		request.setAttribute("user", list);

		request.getRequestDispatcher("/WEB-INF/view/viewAdmin/indexAdmin.jsp").forward(request, response);
	}

}
