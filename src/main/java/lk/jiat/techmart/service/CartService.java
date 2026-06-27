package lk.jiat.techmart.service;

import lk.jiat.techmart.entity.CartItem;
import java.util.List;

public interface CartService {

    void addToCart(CartItem item);

    List<CartItem> getCartItems();

    void removeItem(int id);
}