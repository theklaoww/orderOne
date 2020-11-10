/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.UserController;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.User;

/**
 *
 * @author User
 */
public class RegisterServlet extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String cpassword = request.getParameter("cpassword");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phonenumber = request.getParameter("phonenumber");
        String code = request.getParameter("code");

        if (username.trim().isEmpty()) {
            request.setAttribute("result", "100");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }
        if (password.trim().isEmpty()) {
            request.setAttribute("result", "100");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }

        if (!cpassword.equals(password)) {
            request.setAttribute("result", "102");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }

        if (firstname.trim().isEmpty()) {
            request.setAttribute("result", "100");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }
        if (lastname.trim().isEmpty()) {
            request.setAttribute("result", "100");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }
        if (phonenumber.trim().isEmpty()) {
            request.setAttribute("result", "100");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }
        if (code.trim().isEmpty()) {
            request.setAttribute("result", "106");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }

        UserController uc = new UserController();
        User s = uc.getUserByUsername(username);
       // uc.getAdminCode(s.getCode());
        User regUser = new User(username, password, firstname, lastname, phonenumber, code);
        
        if (s != null ) {
            request.setAttribute("result", "111");
            request.getRequestDispatcher("/register.jsp").forward(request, response);


//           s == uc.getAdminCode(code)
        
            
        }else if (s == uc.getAdminCode(code)) { // check code if true will pass to else and done
            request.setAttribute("result", "222");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }
        
        else {
            uc.addUser(regUser);
            request.setAttribute("message", "You have register successful");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
           
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
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
