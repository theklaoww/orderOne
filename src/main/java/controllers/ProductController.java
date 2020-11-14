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
import models.Product;

/**
 *
 * @author User
 */
public class ProductController {

    Connection conn;

    public Product getProductById(int productId) throws SQLException {

        try {

            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from products where pid = ?");
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Product(rs.getInt("pid"), rs.getString("product_name"), rs.getInt("product_price"));
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Product removeProductById(int productId) throws SQLException {

        try {

            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("DELETE FROM products where pid = ?");
            ps.setInt(1, productId);
            ps.execute();
            
            System.out.println("done");
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductController.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("not done");
        }
        return null;
    }
    
    
    
    public Product getProductIdByProductName(String productName) throws SQLException {

        try {

            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select * from products where product_name = ?");
            ps.setString(1, productName);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Product(rs.getInt("pid"), rs.getString("product_name"), rs.getInt("product_price"));
            }
            rs.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Product> getAllProduct() throws SQLException {
        conn = BuildConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("select * from products");
        ResultSet rs = ps.executeQuery();

        ArrayList<Product> productList = new ArrayList();
        while (rs.next()) {
            productList.add(new Product(rs.getInt("pid"), rs.getString("product_name"), rs.getInt("product_price")));

        }
        return productList;
    }

    public boolean addProduct(Product p) {
        try {
            conn = BuildConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into products (product_name, product_price) values (?,?)");
            ps.setString(1, p.getProductName());
            ps.setInt(2, p.getProductPrice());
            ps.execute();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }
    
    public static void main(String[] args) throws SQLException {
        ProductController pct = new ProductController();
        Product p = new Product("test", 3000);
        pct.addProduct(p);
    }
}
