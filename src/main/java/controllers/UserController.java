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
import models.User;

/**
 *
 * @author User
 */
public class UserController {

    Connection conn;

    public User getUserByUsername(String username) throws SQLException {

        try {

            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from users where username = ?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new User(rs.getInt("id"), rs.getString("username"), rs.getString("password"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("phone_number"), rs.getString("code"));
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public User getUserById(int userId) throws SQLException {

        try {

            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from users where id = ?");
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new User(rs.getInt("id"), rs.getString("username"), rs.getString("password"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("phone_number"), rs.getString("code"));
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public User getAdminCode(String code) throws SQLException {

        try {

            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from admin where code = ?");
            ps.setString(1, code);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new User( rs.getString("username"), rs.getString("password"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("phone_number"), rs.getString("code"));
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
    
    
    public ArrayList<User> getAllUser() throws SQLException {
        conn = BuildConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("select * from users");        
        ResultSet rs = ps.executeQuery();
        
    
        ArrayList<User> allUser = new ArrayList();
        while (rs.next()) {            
            allUser.add(new User(rs.getInt("id"), rs.getString("username"), rs.getString("password"), rs.getString("first_name"), rs.getString("last_name"), rs.getString("phone_number"), rs.getString("code")));
       
        }
         return allUser;
    }
public boolean addAdmin(User s) {
        try {
            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into admin (username, password, first_name, last_name, phone_number,code) values (?,?,?,?,?,?)");
            ps.setString(1, s.getUsername());
            ps.setString(2, s.getPassword());
            ps.setString(3, s.getFirstname());
            ps.setString(4, s.getLastname());
            ps.setString(5, s.getPhoneNumber());
            ps.setString(6, s.getCode());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    public boolean addUser(User s) {
        try {
            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into users (username, password, first_name, last_name, phone_number,code) values (?,?,?,?,?,?)");
            ps.setString(1, s.getUsername());
            ps.setString(2, s.getPassword());
            ps.setString(3, s.getFirstname());
            ps.setString(4, s.getLastname());
            ps.setString(5, s.getPhoneNumber());
            ps.setString(6, s.getCode());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    public static void main(String[] args) throws SQLException {
        UserController uc = new UserController();
        User u = uc.getAdminCode("5526");
  
        System.out.println(u);
        
    }

}
