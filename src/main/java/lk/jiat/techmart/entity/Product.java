    package lk.jiat.techmart.entity;

    import jakarta.persistence.*;

    import java.io.Serializable;

    @Entity
    @Table(name = "product")
    public class Product implements Serializable {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "id")
        private int id;
        @Column(name = "name", length = 100, nullable = false)
        private String name;
        @Column(name = "price", nullable = false)
        private Double price;
        @Column(name = "stock_quantity", nullable = false)
        private int stock_quantity;


        public Product() {
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public int getStock_quantity() {
            return stock_quantity;
        }

        public void setStock_quantity(int stock_quantity) {
            this.stock_quantity = stock_quantity;
        }

        public Double getPrice() {
            return price;
        }

        public void setPrice(Double price) {
            this.price = price;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        @Override
        public String toString() {
            return "Product{" +
                    "id=" + id +
                    ", name='" + name + '\'' +
                    ", price=" + price +
                    ", stock_quantity=" + stock_quantity +
                    '}';
        }
    }
