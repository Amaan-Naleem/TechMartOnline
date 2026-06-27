package lk.jiat.techmart.service;

import lk.jiat.techmart.entity.Product;

import java.util.List;

public interface ProductService {

    void save(Product product);

    Product findById(int id);

    void update(Product product);

    void delete(int id);
    List<Product> findAll();

}
