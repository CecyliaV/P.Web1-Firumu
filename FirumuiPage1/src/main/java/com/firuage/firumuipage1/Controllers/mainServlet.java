/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.firuage.firumuipage1.Controllers;

import com.firuage.firumuipage1.models.Card;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alex Bazaldua
 */
@WebServlet(name = "mainServlet", urlPatterns = {"/mainServlet"})
public class mainServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet mainServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet mainServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }

            List<Card> cards = new ArrayList<>(); 
            cards.add(new Card("https://i.pinimg.com/564x/5d/8c/b9/5d8cb9745981a3fe0fbcfa7e450b2c49.jpg",
                    "Braveheart",
                    "Más real de lo que parece\n",
                    "https://www.pinterest.ca/pin/542754192592420275/"));
             cards.add(new Card("https://i.pinimg.com/564x/7c/e8/d7/7ce8d7a3d0d232e67176024da6b8e33a.jpg",
                    "El señor de los anillos",
                    "¿De verdad es mágnifica?\n",
                    "https://www.pinterest.ca/pin/47147127339216112/"));
              cards.add(new Card("https://i.pinimg.com/564x/8f/2a/35/8f2a358c6947abfd398b7aa7af3d6b88.jpg",
                    "Guason",
                    "¿Tendrá secuela?\n",
                    "https://www.pinterest.ca/pin/276197389637290969/"));
            request.setAttribute("Titulo","Titulo Header"); /*(Nombre de atributo, atributo)*/ /*Asignar objeto*/
            request.setAttribute("cards",cards);
         request.getRequestDispatcher("index.jsp").forward(request, response); 
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

    private void forward(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
