/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller_servlate;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import query.Model_users;

/**
 *
 * @author ahmed
 */
@WebServlet(name = "CheckEmail", urlPatterns = {"/CheckEmail"})
public class CheckEmail extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");

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
        response.setContentType("text/jsp;charset=UTF-8");

        request.setCharacterEncoding("UTF-8");
        String email = (String) request.getParameter("email").toString();
        String user_name = "";
        Model_users model_users = new Model_users();

        try {
            user_name = model_users.selectUserNmaeByEmail(email);
        } catch (SQLException ex) {
            Logger.getLogger(CheckEmail.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (user_name == null) {
            request.setAttribute("message_null", "لم يعط البحث الذي أجريته أي نتائج <br> يرجى المحاولة من جديد باستخدام معلومات صحيحه");
            request.getRequestDispatcher("remember.jsp").forward(request, response);

        } else {
            request.setAttribute("user_name_rc", user_name);
            request.setAttribute("email_rc", email);
            request.getRequestDispatcher("send_email.jsp").forward(request, response);

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
    }// </editor-fold>

}
