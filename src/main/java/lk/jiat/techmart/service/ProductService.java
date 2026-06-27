package lk.jiat.techmart.service;

import lk.jiat.techmart.entity.Product;

public interface ProductService {

    void save(Product product);

    Product findById(int id);

    void update(Product product);

    void delete(int id);
}
