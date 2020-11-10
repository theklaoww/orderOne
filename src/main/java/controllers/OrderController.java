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
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Order;
import models.OrderDetail;

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
}
