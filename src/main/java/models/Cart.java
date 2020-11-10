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
public class Cart {
    private String productName;
    private int amount;
    private int price;
    private int eachAllPrice;

    public int getEachAllPrice() {
        return eachAllPrice;
    }

    public void setEachAllPrice(int eachAllPrice) {
        this.eachAllPrice = eachAllPrice;
    }

    
    
    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Cart() {
    }

    public Cart(String productName, int amount, int price, int eachAllPrice) {
        this.productName = productName;
        this.amount = amount;
        this.price = price;
        this.eachAllPrice = eachAllPrice;
    }

    @Override
    public String toString() {
        return "Cart{" + "productName=" + productName + ", amount=" + amount + ", price=" + price + ", eachAllPrice=" + eachAllPrice + '}';
    }

    
    
}
