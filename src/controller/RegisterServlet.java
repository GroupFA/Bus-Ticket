/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.Users;
import model.AccountModel;
import model.RegisterModel;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Admin
 */
@WebServlet(name = "RegisterServlet", urlPatterns = { "/RegisterServlet" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class RegisterServlet extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String fullName = request.getParameter("fullName");
		String usersname = request.getParameter("usersName");
		String password = request.getParameter("passWord");
		String repassword = request.getParameter("repassword");
		String gender = request.getParameter("gender");
		String email = request.getParameter("Email");
		String phoneNum = request.getParameter("phoneNum");
		String address = request.getParameter("address");
		String yeucau = request.getParameter("yeucau");
		String page = "";
		String message = "";
		HttpSession session = request.getSession();
		Users users = new Users(usersname, password, fullName, gender, address, phoneNum, 0 + "", email);

		RegisterModel productsModel = new RegisterModel();
		if (fullName.trim().equals("")) {
			message = "Bạn không được để trống";
			page = "/WEB-INF/view/Register.jsp";
		} else {
			if (password.equals(repassword)) {
				if (yeucau.equals("insert")) {
					int kq = productsModel.insertUsers(users);

					if (kq != -1) {
						if (kq != 1) {
							session.setAttribute("index.jsp", new RegisterModel().getList());
							page = "/WEB-INF/view/Login.jsp";

						}
					}
				}
			} else {
				message = "Mật khẩu không trùng khớp";
				page = "/WEB-INF/view/Register.jsp";
			}
			
		}
		request.setAttribute("thong bao ", message);
		request.getRequestDispatcher(page).forward(request, response);

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/Register.jsp").forward(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
