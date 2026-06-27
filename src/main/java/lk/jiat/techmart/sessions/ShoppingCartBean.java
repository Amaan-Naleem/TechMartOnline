package lk.jiat.techmart.sessions;

import jakarta.ejb.Stateful;
import lk.jiat.techmart.entity.Product;
import lk.jiat.techmart.service.ShoppingCartService;

import java.util.ArrayList;
import java.util.List;

@Stateful
public class ShoppingCartBean implements ShoppingCartService {

    private final List<Product> cart = new ArrayList<>();

    @Override
    public void addProduct(Product product) {
        cart.add(product);
    }

    @Override
    public void removeProduct(Product product) {
        cart.remove(product);
    }

    @Override
    public List<Product> getCart() {
        return cart;
    }

    @Override
    public void clearCart() {
        cart.clear();
    }
}