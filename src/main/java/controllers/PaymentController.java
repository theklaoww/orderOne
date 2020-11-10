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

/**
 *
 * @author User
 */
public class PaymentController {
    
     Connection conn;
    
    public int addPaymentType(int orderId,String ptype,int totalPrice) {
        try {
            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into payments (order_id,payment_type,total_price) values (?,?,?)");
            ps.setInt(1, orderId);
            ps.setString(2, ptype);
            ps.setInt(3, totalPrice);
            ps.executeUpdate();
           
           
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(PaymentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;

    }
}
