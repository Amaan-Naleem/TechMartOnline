package lk.jiat.techmart.service;

import lk.jiat.techmart.entity.Product;

import java.util.Map;

public interface InventoryManagerService {

    void addProduct(Product product);

    Product getProduct(int id);

    void removeProduct(int id);

    Map<Integer, Product> getInventory();

    void updateStock(Product product, int quantity);
}