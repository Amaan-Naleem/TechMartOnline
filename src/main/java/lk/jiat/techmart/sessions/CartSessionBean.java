package lk.jiat.techmart.sessions;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import lk.jiat.techmart.entity.CartItem;
import lk.jiat.techmart.service.CartService;

import java.util.List;

@Stateless
public class CartSessionBean implements CartService {

    @PersistenceContext(unitName = "TechMartPU")
    private EntityManager em;

    @Override
    public void addToCart(CartItem item) {
        em.persist(item);
    }

    @Override
    public List<CartItem> getCartItems() {
        TypedQuery<CartItem> query =
                em.createQuery("SELECT c FROM CartItem c", CartItem.class);
        return query.getResultList();
    }

    @Override
    public void removeItem(int id) {
        CartItem item = em.find(CartItem.class, id);
        if (item != null) {
            em.remove(item);
        }
    }

    @Override
    public void clearCart() {
        em.createQuery("DELETE FROM CartItem").executeUpdate();
    }
}