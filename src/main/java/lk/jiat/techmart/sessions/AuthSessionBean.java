package lk.jiat.techmart.sessions;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import lk.jiat.techmart.entity.User;
import lk.jiat.techmart.service.AuthService;

@Stateless
public class AuthSessionBean implements AuthService {

    @PersistenceContext(unitName = "TechMartPU")
    private EntityManager em;

    @Override
    public User login(String username, String password) {

        TypedQuery<User> query = em.createQuery(
                "SELECT u FROM User u WHERE u.username = :u AND u.password = :p",
                User.class
        );

        query.setParameter("u", username);
        query.setParameter("p", password);

        try {
            return query.getSingleResult();
        } catch (Exception e) {
            return null;
        }
    }

    @Override
    public void register(User user) {
        em.persist(user);
    }
}