/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.ProductController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Admin;
import models.Product;

/**
 *
 * @author User
 */
public class AddProductServlet extends HttpServlet {

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
         
       String pname  = request.getParameter("productname");
       String price  = request.getParameter("price"); 
       
       
        HttpSession session = request.getSession(false);

        if (session.getAttribute("admin") != null) {
            
            if (pname.trim().isEmpty() || price.trim().isEmpty()) {
            
            request.getRequestDispatcher("/loginAdmin").forward(request, response);
        }
       
       
        ProductController pct = new ProductController();
        Product p = new Product(pname, Integer.valueOf(price));
        
        Admin a = (Admin) request.getSession().getAttribute("admin");
        
        if(a != null){
             pct.addProduct(p);
             request.setAttribute("msg","111");
        request.getRequestDispatcher("Product").forward(request, response);
        
        }else{
            request.getRequestDispatcher("AdminHome").forward(request, response);
        }

        } else if (session.getAttribute("user") != null) {
            request.getSession().invalidate();
            request.getRequestDispatcher("/index.html").forward(request, response);
        } else{
            request.getSession().invalidate();
            request.getRequestDispatcher("/AdminHome").forward(request, response);
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
