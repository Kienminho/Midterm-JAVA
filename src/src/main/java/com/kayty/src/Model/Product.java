package com.kayty.src.Model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Entity
@NoArgsConstructor
@Table
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String productName;

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Column
    private String imageUrl;

    private String category;

    public void setSubCategory(String subCategory) {
        this.subCategory = subCategory;
    }

    private String subCategory;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    @Column(length = 6535)
    private String description;

    private double price;

    private String size;

    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;

    @ManyToOne
    @JoinColumn(name = "shopping_cart_id")
    private ShoppingCart shoppingCart;
    public Product(Long id, String productName, String imageUrl, String category,String description, String subCategory, double price, String size) {
        this.id = id;
        this.productName = productName;
        this.imageUrl = imageUrl;
        this.category = category;
        this.description = description;
        this.subCategory = subCategory;
        this.price = price;
        this.size = size;
    }

    public Product(Long id, String productName, String imageUrl, String category,String subCategory, double price, String size) {
        this.id = id;
        this.productName = productName;
        this.imageUrl = imageUrl;
        this.category = category;
        this.subCategory = subCategory;
        this.price = price;
        this.size = size;
    }


    public void setId(Long id) {
        this.id = id;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setPrice(double price) {
        this.price = price;
    }


    public void setSize(String size) {
        this.size = size;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public void setShoppingCart(ShoppingCart shoppingCart) {
        this.shoppingCart = shoppingCart;
    }

    public String toString() {

        return "Product[ "+ this.id+ ", "+this.productName+", "+this.category+", "+ this.subCategory+", "+this.price+"]";
    }
}
