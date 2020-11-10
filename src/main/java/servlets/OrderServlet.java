/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.ProductController;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import models.Cart;
import models.Product;

/**
 *
 * @author User
 */
public class OrderServlet extends HttpServlet {

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

        Map order = request.getParameterMap(); //product-id-0, value="1"

        Set orderSet = order.entrySet(); //All of amount
        Iterator it = orderSet.iterator(); //amount of cart

        ArrayList<Cart> OrderList = new ArrayList(); //Create a cart

        String productName = null;
        int productPrice = 0;

        while (it.hasNext()) {

            Map.Entry<String, String[]> entry = (Map.Entry<String, String[]>) it.next(); //net

            String key = entry.getKey();
            String[] value = entry.getValue();

            if (key.matches("product-id-(.*)")) {
                //System.out.println("product id is " + value[0].toString());
                ProductController pct = new ProductController();
                Product p = pct.getProductById(Integer.valueOf(value[0]));
                productName = p.getProductName();
                productPrice = p.getProductPrice();

            }

            if (key.matches("amount-(.*)")) {
                //System.out.println("amount id is " + value[0].toString());
                if (Integer.valueOf(value[0]) > 0) {
                    OrderList.add(new Cart(productName, Integer.valueOf(value[0]), productPrice, Integer.valueOf(value[0])*productPrice)); // name // amount // price // eachallprice
                }
            }
        }
        
        int totalPrice = 0;
        
        for (Cart cart : OrderList) {
            totalPrice = totalPrice + (cart.getPrice() * cart.getAmount());
        }
        
        

        request.getSession().setAttribute("totalprice", totalPrice);
        request.getSession().setAttribute("cartview", OrderList);
       
        request.getRequestDispatcher("/cartView.jsp").forward(request, response);

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
            Logger.getLogger(OrderServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(OrderServlet.class.getName()).log(Level.SEVERE, null, ex);
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
