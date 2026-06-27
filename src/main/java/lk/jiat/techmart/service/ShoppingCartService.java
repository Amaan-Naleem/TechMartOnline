package lk.jiat.techmart.service;

import lk.jiat.techmart.entity.Product;

import java.util.List;

public interface ShoppingCartService {

    void addProduct(Product product);

    void removeProduct(Product product);

    List<Product> getCart();

    void clearCart();
}