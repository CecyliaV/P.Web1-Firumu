/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.firuage.pw03semana11.controllers;

import com.firuage.pw03semana11.DAO.UserDAO;
import com.firuage.pw03semana11.models.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Alex Bazaldua
 */
@WebServlet(name = "SignInController", urlPatterns = {"/SignInController"})
public class SignInController extends HttpServlet {

 

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
        String pUsername = request.getParameter("username");
        String pPassword = request.getParameter("password");
         User user = new User(pUsername,pPassword);
        if (UserDAO.signInUser(user) == 1) {
         response.sendRedirect("SuccessSignIn.jsp");
        }else{
            response.sendRedirect("Fail.jsp");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
