/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import db.BuildConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Order;
import models.OrderDetail;
import models.Product;
import models.User;

/**
 *
 * @author User
 */
public class OrderController {

    Connection conn;

    public Order getOrderById(int orderId) throws SQLException {

        try {

            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from orders where order_id = ?");
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Order(rs.getInt("order_id"), rs.getInt("user_id"));
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(OrderController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int addOrder(int userId) {
        try {
            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into orders (user_id) values (?)");
            ps.setInt(1, userId);

            ps.executeUpdate();

            ps = conn.prepareStatement("select * from orders where user_id = ? order by order_id desc limit 1");
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return (int) rs.getObject("order_id");
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(OrderController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;

    }

    public boolean addOrderDetail(OrderDetail od) {
        try {
            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into order_details (order_id,product_id,amount) values (?,?,?)");
            ps.setInt(1, od.getOrderId());
            ps.setInt(2, od.getProductId());
            ps.setInt(3, od.getAmount());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(OrderController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }
    
    public ArrayList<Order> getAllOrder() throws SQLException {
        conn = BuildConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("select * from orders");        
        ResultSet rs = ps.executeQuery();
        
        UserController uct = new UserController();
        ArrayList<Order> allOrder = new ArrayList();
        while (rs.next()) {            
            
            
            User user = uct.getUserById(rs.getInt("user_id"));
            
            
            allOrder.add(new Order(rs.getInt("order_id"), rs.getInt("user_id"), user));
        }
         return allOrder;
    }

    public ArrayList<OrderDetail> getOrderDetial(int orderId) throws SQLException {
        conn = BuildConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("select * from order_details where order_id = ?");

        ps.setInt(1, orderId);
        ResultSet rs = ps.executeQuery();
        ArrayList<OrderDetail> allOrder = new ArrayList();
        while (rs.next()) {
            allOrder.add(new OrderDetail(rs.getInt("order_id"), rs.getInt("product_id"), rs.getInt("amount")));
        }
        return allOrder;

    }

    public static void main(String[] args) throws SQLException {
        OrderController oct = new OrderController();
        ArrayList<OrderDetail> od = oct.getOrderDetial(3);

        ProductController pct = new ProductController();

        for (OrderDetail orderDetail : od) {
            Product p = pct.getProductById(orderDetail.getProductId());
            System.out.println(p.getProductName());
            System.out.println(orderDetail.getAmount());
            System.out.println(p.getProductPrice() * orderDetail.getAmount());
        }
    }
}
