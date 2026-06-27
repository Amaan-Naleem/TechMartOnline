package lk.jiat.techmart.entity;

import jakarta.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
@Table(name = "orders")
public class Orders implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "User_id", nullable = false)
    private User user;

    @ManyToOne
    @JoinColumn(name = "Product_id", nullable = false)
    private Product product;

    @Column(name = "order_date", nullable = false)
    private LocalDateTime orderDate = LocalDateTime.now();

    public Orders() {}

    public Orders(User user, Product product) {
        this.user = user;
        this.product = product;
        this.orderDate = LocalDateTime.now();
    }

    public User getUser() { return user; }

    public void setUser(User user) {   // FIXED
        this.user = user;
    }

    public Product getProduct() { return product; }

    public void setProduct(Product product) {
        this.product = product;
    }

    public LocalDateTime getOrderDate() { return orderDate; }

    public void setOrderDate(LocalDateTime orderDate) {
        this.orderDate = orderDate;
    }

    public int getId() { return id; }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", user=" + user +
                ", product=" + product +
                ", orderDate=" + orderDate +
                '}';
    }
}