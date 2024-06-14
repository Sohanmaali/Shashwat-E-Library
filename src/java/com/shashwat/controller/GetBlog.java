/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.shashwat.controller;

import com.shashwat.model.BlogDAO;
import com.shashwat.model.BlogDTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author Mohan_Maali
 */
public class GetBlog extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String category = request.getParameter("category");

            String user = request.getParameter("true");
            boolean userb = false;
            if (user != null) {
                userb = Boolean.parseBoolean(user);

            }

            System.out.println("" + category);
            ArrayList<BlogDAO> bloglist = new ArrayList<>();
            HttpSession session = request.getSession();
            BlogDTO blogdto = new BlogDTO();

            out.println("user");
            if (userb) {

                out.println("user");

                ArrayList<BlogDAO> userbloglist = new ArrayList<>();
                int userId = 1;

                if (blogdto.getUserBlog(userbloglist, userId)) {
                    session.setAttribute("userbloglist", userbloglist);

                    response.sendRedirect("./UserView/blog_1.jsp");
                } else {
                    response.sendRedirect("./UserView/Home.jsp");

                }

            } else {

                out.println("users");
                if (blogdto.getBlog(bloglist, category)) {
                    session.setAttribute("bloglist", bloglist);

                    response.sendRedirect("./UserView/blog_1.jsp");
                } else {
                    response.sendRedirect("./UserView/Home.jsp");

                }
            }
            out.println("user2");

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
