/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author User
 */
public class Order {
    private int orderId;
    private int userId;
    private User user;
    
    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Order() {
    }

    public Order(int orderId, int userId) {
        this.orderId = orderId;
        this.userId = userId;
    }

    public Order(int orderId, int userId, User user) {
        this.orderId = orderId;
        this.userId = userId;
        this.user = user;
    }

    @Override
    public String toString() {
        return "Order{" + "orderId=" + orderId + ", userId=" + userId + ", user=" + user + '}';
    }
    
}
