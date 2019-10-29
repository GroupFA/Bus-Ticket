/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.AccountModel;
import Model.JDBCConnection;

import entities.Registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "loginServlet", urlPatterns = { "/loginServlet" })
public class AccountServlet extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		String page = "";
		String message = "";
		AccountModel acmodel = new AccountModel();
		Registration re = new Registration(username, password);
//		Account nd = acmodel.LoginAccount(username, password);
		Registration nd = acmodel.LoginAccount(re);
//		System.out.print(nd.getUsername() + nd.getPassword());
		if (nd != null) {
				if (nd.getRole().equals("Admin")) {
					page = "Admin.jsp";
				} else if (nd.getRole().equals("Seller")) {
					page = "seller.jsp";
				} else if (nd.getRole().equals("Customer")) {
					page = "customer.jsp";
				}
			} else {
				message = "sai password";
				page = "ctctrcr.jsp";

			}
		
			request.setAttribute("thong bao", message);
			request.getRequestDispatcher(page).forward(request, response);
		}

	

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
	// + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request  servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request  servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
