package com.shashwat.controller;

import com.shashwat.model.UserDAO;
import com.shashwat.model.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Registration extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String fullname = request.getParameter("fullname");
            String userName = request.getParameter("username");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");

//     ----- -------------------
            String gender = "male";
//    --------------------------       
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");

            UserDAO udao = new UserDAO(fullname, userName, email, mobile, password, gender, dob);
            UserDTO udto = new UserDTO();
            System.out.println("registration page+++++++++++++++++++++++");
            HttpSession session = request.getSession();
            if (udto.insert(udao)) {

//                --------  send on Home page -----------
                System.out.println("" + udao.getUsername());
                System.out.println("" + udao.getPassword());
                if (udto.login(udao)) {

                    session.setAttribute("udao", udao);
                    response.sendRedirect("./UserView/Home.jsp");
                } else {
                    response.sendRedirect("Registration.jsp");
                }
            } else {
                response.sendRedirect("./UserView/Registration.jsp");
            }
        }
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
