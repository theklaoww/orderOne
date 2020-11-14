/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import controllers.AdminController;
import controllers.OrderController;
import controllers.ProductController;
import controllers.UserController;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Admin;
import models.OrderDetail;
import models.Product;
import models.User;

/**
 *
 * @author User
 */
@WebServlet(name = "ReportServlet", urlPatterns = {"/Report"})
public class ReportServlet extends HttpServlet {

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

        String orderId = request.getParameter("order_id");
        String orderBy = request.getParameter("orderby");
        String userId = request.getParameter("userId");

//        if(orderId.isEmpty() || orderBy.isEmpty()) { //make e
//            response.sendRedirect("OrderView");
//            return;
//        }
        OrderController oct = new OrderController();
        ArrayList<OrderDetail> od = oct.getOrderDetial(Integer.valueOf(orderId));
        ProductController pct = new ProductController();
        AdminController act = new AdminController();
        UserController uct = new UserController();
        HttpSession session = request.getSession(false);

        if (session.getAttribute("admin") != null) {

            User u = uct.getUserById(Integer.valueOf(userId));
            Admin a = act.getAdminByCode(u.getCode());

            ArrayList<List> orderDetails = new ArrayList<>();

            int totalPrice = 0;

            for (OrderDetail orderDetail : od) {
                Product p = pct.getProductById(orderDetail.getProductId());
                System.out.println(p.getProductName());
                System.out.println(orderDetail.getAmount());
                System.out.println(p.getProductPrice() * orderDetail.getAmount());

                int price = p.getProductPrice() * orderDetail.getAmount();

                totalPrice = totalPrice + price;

                List<String> result = Arrays.asList(String.valueOf(p.getProductName()), String.valueOf(orderDetail.getAmount()), String.valueOf(price));
                orderDetails.add(result); // ad
            }

            request.setAttribute("userID", u.getId());
            request.setAttribute("userPhone", u.getPhoneNumber());
            request.setAttribute("adminName", a.getFirstname());
            request.setAttribute("adminCode", a.getCode());
            request.setAttribute("fname", orderBy);
            request.setAttribute("orderId", orderId);
            request.setAttribute("totalP", totalPrice);
            request.setAttribute("orderDetails", orderDetails);
            request.getRequestDispatcher("/report.jsp").forward(request, response);

        } else if (session.getAttribute("user") != null) {
            request.getSession().invalidate();
            request.getRequestDispatcher("/index.html").forward(request, response);
        } else {
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ReportServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ReportServlet.class.getName()).log(Level.SEVERE, null, ex);
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
