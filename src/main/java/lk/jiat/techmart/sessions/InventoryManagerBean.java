package lk.jiat.techmart.sessions;

import jakarta.ejb.Asynchronous;
import jakarta.ejb.Singleton;
import lk.jiat.techmart.entity.Product;
import lk.jiat.techmart.service.InventoryManagerService;

import java.util.HashMap;
import java.util.Map;

@Singleton
public class InventoryManagerBean implements InventoryManagerService {

    private final Map<Integer, Product> inventory = new HashMap<>();

    @Override
    public void addProduct(Product product) {
        inventory.put(product.getId(), product);
    }

    @Override
    public Product getProduct(int id) {
        return inventory.get(id);
    }

    @Override
    public void removeProduct(int id) {
        inventory.remove(id);
    }

    @Override
    public Map<Integer, Product> getInventory() {
        return inventory;
    }

    @Override
    @Asynchronous
    public void updateStock(Product product, int quantity) {
        int newStock = product.getStock_quantity() - quantity;
        product.setStock_quantity(newStock);

        System.out.println("Stock updated for: " + product.getName());
    }
}