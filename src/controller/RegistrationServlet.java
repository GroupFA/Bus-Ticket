/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.AccountModel;
import Model.RegistrationModel;
import entities.Registration;

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
@WebServlet(name = "RegistrationServlet", urlPatterns = {"/RegistrationServlet"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50)
public class RegistrationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
     String fullName = request.getParameter("fullName");
        String usersname = request.getParameter("usersName");
        String password = request.getParameter("passWord");
        String gender = request.getParameter("gender");
        String email = request.getParameter("Email");
        String phoneNum = request.getParameter("phoneNum");
        String address = request.getParameter("address");
        String yeucau = request.getParameter("yeucau");
        String page = "";
        String message = "";
HttpSession session = request.getSession();
        Registration users = new Registration(usersname, password, fullName, gender,address,phoneNum,email);

        RegistrationModel productsModel = new RegistrationModel();
        if (yeucau.equals("insert")) {
            int kq = productsModel.insertUsers(users);

            if (kq != -1) {
                if (kq != 1) {
                    session.setAttribute("index.jsp", new RegistrationModel().getList());
                    page = "index.jsp";

                } else {
                    message = "insert that bai";
                    page = "addProduct.jsp";
                }

            } else {
                message = "ket noi database that bai";
                page = "";
            }
        }
        request.setAttribute("thong bao ", message);
        request.getRequestDispatcher(page).forward(request, response);
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
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
