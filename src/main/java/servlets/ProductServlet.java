/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.AdminController;
import controllers.ProductController;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Admin;
import models.Product;
import models.User;

/**
 *
 * @author User
 */
public class ProductServlet extends HttpServlet {

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

//        User s = (User) request.getSession().getAttribute("user");
//         if (s != null ) {
//             request.getRequestDispatcher("/index.html").forward(request, response);
//         }
//         
//        Admin a = (Admin) request.getSession().getAttribute("admin");
//        System.out.println("=======");
//        System.out.println(a);
//        if (a == null ) {
//            //   request.getSession().setAttribute("admin", a);
//            request.getRequestDispatcher("/index.html").forward(request, response);
//            System.out.println("usergoadmin");
//
//        }
        ProductController pct = new ProductController();
        ArrayList<Product> p = pct.getAllProduct();

        HttpSession session = request.getSession(false);

        if (session.getAttribute("admin") != null) {

            request.getSession().setAttribute("productList", p);
            request.getRequestDispatcher("/productview.jsp").forward(request, response);
            System.out.println("adminpass");

        } else if (session.getAttribute("user") != null) {
            request.getSession().invalidate();
            request.getRequestDispatcher("/index.html").forward(request, response);
        } else {
            request.getSession().invalidate();
            request.getRequestDispatcher("/Home").forward(request, response);
        }

    }
//        ProductController pct = new ProductController();
//                ArrayList<Product> p = pct.getAllProduct();
//                request.getSession().setAttribute("productList", p);
//        request.getRequestDispatcher("/productview.jsp").forward(request, response);
//        
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
            Logger.getLogger(ProductServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ProductServlet.class.getName()).log(Level.SEVERE, null, ex);
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
