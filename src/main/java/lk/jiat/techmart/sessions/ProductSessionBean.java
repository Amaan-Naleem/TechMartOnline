//package lk.jiat.techmart.sessions;
//
//import jakarta.ejb.Stateless;
//import jakarta.persistence.EntityManager;
//import jakarta.persistence.PersistenceContext;
//import lk.jiat.techmart.entity.Product;
//import lk.jiat.techmart.entity.User;
//import lk.jiat.techmart.service.ProductService;
//
//import java.util.List;
//
//@Stateless
//public class ProductSessionBean implements ProductService {
//@PersistenceContext(unitName = "TechMartPU")
//private EntityManager em;
//
//    @Override
//    public void save(Product product) {
//        em.persist(product);
//    }
//
//    @Override
//    public Product findById(int id) {
//        return em.find(Product.class, id);
//    }
//
//    @Override
//    public void update(Product product) {
//        em.merge(product);
//    }
//
//    @Override
//    public void delete(int id) {
//        Product product = em.find(Product.class, id);
//        if (product != null) {
//            em.remove(product);
//        }
//    }
//}
package lk.jiat.techmart.sessions;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.jiat.techmart.entity.Product;
import lk.jiat.techmart.service.ProductService;

@Stateless
public class ProductSessionBean implements ProductService {

    @PersistenceContext(unitName = "TechMartPU")
    private EntityManager em;

    @Override
    public void save(Product product) {
        em.persist(product);
    }

    @Override
    public Product findById(int id) {
        return em.find(Product.class, id);
    }

    @Override
    public void update(Product product) {
        em.merge(product);
    }

    @Override
    public void delete(int id) {
        Product product = em.find(Product.class, id);
        if (product != null) {
            em.remove(product);
        }
    }
}