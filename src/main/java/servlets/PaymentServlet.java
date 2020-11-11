/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.AdminController;
import controllers.OrderController;
import controllers.PaymentController;
import controllers.ProductController;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Admin;
import models.Cart;
import models.Order;
import models.OrderDetail;
import models.Product;
import models.User;

/**
 *
 * @author User
 */
public class PaymentServlet extends HttpServlet {

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

        String paymentOption = request.getParameter("pay_option");

        ProductController pct = new ProductController();
        OrderController oct = new OrderController();
        User s = (User) request.getSession().getAttribute("user");
        PaymentController pyc = new PaymentController();
        AdminController act = new AdminController();
        Admin a = act.getAdminByCode(s.getCode());
        
       
        
        
        ArrayList<Cart> orderList = (ArrayList<Cart>) request.getSession().getAttribute("cartview");
        
        //System.out.println(orderList);
        Product p;

        if (paymentOption.contains("cod")) {
            int order_id = oct.addOrder(s.getId());

            for (Cart cart : orderList) {
                p = pct.getProductIdByProductName(cart.getProductName());
                //System.out.println(p.getId());
                oct.addOrderDetail(new OrderDetail(order_id, p.getId(), cart.getAmount()));
                pyc.addPaymentType(order_id, "COD", (int) request.getSession().getAttribute("totalprice"));
            }
          //  request.getSession().setAttribute("adminInfo", a.getPhoneNumber());
            
            request.setAttribute("paymenttype", "COD");
            request.setAttribute("oid", order_id);
            request.getRequestDispatcher("/completeOrder.jsp").forward(request, response);

        } else if (paymentOption.contains("qr")) {

            int order_id = oct.addOrder(s.getId());

            for (Cart cart : orderList) {
                p = pct.getProductIdByProductName(cart.getProductName());
                //System.out.println(p.getId());
                oct.addOrderDetail(new OrderDetail(order_id, p.getId(), cart.getAmount()));
                pyc.addPaymentType(order_id, "QR", (int) request.getSession().getAttribute("totalprice"));

            }
            request.setAttribute("adminInfo", a);
            request.setAttribute("paymenttype", "QR");
            request.setAttribute("oid", order_id);
            request.setAttribute("totalprice", request.getSession().getAttribute("totalprice"));
            request.getRequestDispatcher("/completeOrder.jsp").forward(request, response);

        } else if (paymentOption.contains("promptpay")) {
            int order_id = oct.addOrder(s.getId());

            for (Cart cart : orderList) {
                p = pct.getProductIdByProductName(cart.getProductName());

                oct.addOrderDetail(new OrderDetail(order_id, p.getId(), cart.getAmount()));
                pyc.addPaymentType(order_id, "promptpay", (int) request.getSession().getAttribute("totalprice"));

            }
            request.setAttribute("paymenttype", "promptpay");
            request.setAttribute("oid", order_id);
            request.getRequestDispatcher("/completeOrder.jsp").forward(request, response);

        } else {
            System.out.println("4");
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
            Logger.getLogger(PaymentServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(PaymentServlet.class.getName()).log(Level.SEVERE, null, ex);
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
