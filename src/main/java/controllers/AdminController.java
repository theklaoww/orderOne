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
import models.Admin;

/**
 *
 * @author User
 */
public class AdminController {

    Connection conn;

    public Admin getAdminPass(String pass) throws SQLException {

        try {

            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from admin where password = ?");
            ps.setString(1, pass);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Admin(rs.getString("password"));
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean addAdmin(Admin a) {
        try {
            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into admin (username, password, first_name, last_name, phone_number,code) values (?,?,?,?,?,?)");
            ps.setString(1, a.getUsername());
            ps.setString(2, a.getPassword());
            ps.setString(3, a.getFirstname());
            ps.setString(4, a.getLastname());
            ps.setString(5, a.getPhoneNumber());
            ps.setInt(6, a.getCode());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    public Admin getAdminByCode(String code) throws SQLException {

        try {

            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from admin where code = ?");
            ps.setString(1, code);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Admin(rs.getString("username"), rs.getString("password"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("phone_number"), rs.getInt("code"));
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Admin getAdminByUsername(String username) throws SQLException {

        try {

            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from admin where username = ?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Admin(rs.getString("username"), rs.getString("password"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("phone_number"), rs.getInt("code"));
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void resetReportOrder() throws SQLException {
        conn = BuildConnection.getConnection();
        try {

            
            PreparedStatement ps1 = conn.prepareStatement("TRUNCATE TABLE order_one.order_details");
            PreparedStatement ps2 = conn.prepareStatement("TRUNCATE TABLE order_one.orders");
            PreparedStatement ps3 = conn.prepareStatement("TRUNCATE TABLE order_one.payments");

            ps1.execute();
            ps2.execute();
            ps3.execute();
            conn.close();
            System.out.println("reset all table done");
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
             System.out.println("can't all table ");
        }

    }

    public static void main(String[] args) throws SQLException {
        AdminController act = new AdminController();

       act.resetReportOrder();
    }

}
