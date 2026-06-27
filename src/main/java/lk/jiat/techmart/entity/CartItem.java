package lk.jiat.techmart.entity;

import jakarta.persistence.*;

import java.io.Serializable;

@Entity
@Table(name = "cart_item")
public class CartItem implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "product_name", length = 150, nullable = false)
    private String product_name;
    @Column(name = "price", nullable = false)
    private Double price;
    @Column(name = "qty", nullable = false)
    private int quantity;
    @ManyToOne
    @JoinColumn(name = "Product_id")
    private Product product;

    public CartItem() {
    }

    public CartItem(Product product, int id, String product_name, int quantity, Double price) {
        this.product = product;
        this.id = id;
        this.product_name = product_name;
        this.quantity = quantity;
        this.price = price;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
