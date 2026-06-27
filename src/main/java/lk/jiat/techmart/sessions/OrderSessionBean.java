package lk.jiat.techmart.sessions;

import jakarta.ejb.Stateless;
import jakarta.inject.Inject;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.jiat.techmart.entity.Orders;
import lk.jiat.techmart.entity.Product;
import lk.jiat.techmart.entity.User;
import lk.jiat.techmart.jms.NotificationProducer;
import lk.jiat.techmart.service.OrderService;

@Stateless
public class OrderSessionBean implements OrderService {
@PersistenceContext(unitName = "TechMartPU")
private EntityManager em;
    @Override
    public void save(Orders order) {
        em.persist(order);
    }

    @Override
    public Orders findById(int id) {
        return em.find(Orders.class, id);
    }

    @Override
    public void update(Orders order) {
        em.merge(order);
    }

    @Override
    public void delete(int id) {
        em.remove(em.find(Orders.class, id));
    }

    @Override
    public Product findProductById(int productId) {
        return em.find(Product.class, productId);
    }

    @Override
    public User findUserById(int userId) {
        return em.find(User.class, userId);
    }
}