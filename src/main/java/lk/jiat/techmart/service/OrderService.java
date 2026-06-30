package lk.jiat.techmart.service;

import lk.jiat.techmart.entity.Orders; // Use your Entity
import lk.jiat.techmart.entity.Product;
import lk.jiat.techmart.entity.User;

public interface OrderService {
    void save(Orders order);

    Orders findById(int id);

    void update(Orders order);

    void delete(int id);

    Product findProductById(int productId);

    User findUserById(int userId);
}