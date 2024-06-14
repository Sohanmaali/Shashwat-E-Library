/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.shashwat.controller.manager;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.shashwat.model.manager.BookDAO;
import com.shashwat.model.manager.BookDTO;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mohan_Maali
 */
@WebServlet(name = "AddBook")
public class AddBook extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String authorName = request.getParameter("authorName");
            String genre = request.getParameter("genre");
            String bookName = request.getParameter("bookName");
            String py = request.getParameter("py");
            int pg = Integer.parseInt(request.getParameter("pg"));
            String bookImg = request.getParameter("bookImg");
            String pdf = request.getParameter("pdf");

            BookDAO bookdao = new BookDAO();
            BookDTO dto = new BookDTO();
            bookdao.setAuthorName(authorName);
            bookdao.setGenre(genre);
            bookdao.setBookName(bookName);
            bookdao.setPublishingYear(py);
            bookdao.setPageNo(pg);
            bookdao.setImg(bookImg);
            bookdao.setPdf(pdf);

            dto.addBook(bookdao);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddBook.class.getName()).log(Level.SEVERE, null, ex);
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
