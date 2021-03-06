package com.internet.shop.model;

import java.util.ArrayList;
import java.util.List;

public class Order {
    private final Long userId;
    private Long id;
    private List<Product> products;

    public Order(Long userId) {
        this.userId = userId;
        products = new ArrayList<>();
    }

    public Order(Long id, Long userId) {
        this.id = id;
        this.userId = userId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public Long getUserId() {
        return userId;
    }

    @Override
    public String toString() {
        return "\nOrder { "
                + "id = " + id
                + " , userId = " + userId
                + " , \nproducts = " + products
                + " }";
    }
}
