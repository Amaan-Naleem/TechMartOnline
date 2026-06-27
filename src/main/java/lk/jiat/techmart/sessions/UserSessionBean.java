//package lk.jiat.techmart.sessions;
//
//
//import jakarta.ejb.Stateless;
//import jakarta.persistence.EntityManager;
//import jakarta.persistence.PersistenceContext;
//import lk.jiat.techmart.entity.User;
//import lk.jiat.techmart.service.UserService;
//
//import java.util.List;
//
//@Stateless
//public class UserSessionBean implements UserService {
//    @PersistenceContext(unitName = "TechMartPU")
//    private EntityManager em;
//
//    @Override
//    public void save(User user) {
//        em.persist(user);
//    }
//
//    @Override
//    public User findById(int id) {
//        return em.find(User.class, id);
//    }
//
//    @Override
//    public void update(User user) {
//        em.merge(user);
//    }
//
//    @Override
//    public void delete(int id) {
//        User user = em.find(User.class, id);
//        if (user != null) {
//            em.remove(user);
//        }
//    }
//}
package lk.jiat.techmart.sessions;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.jiat.techmart.entity.User;
import lk.jiat.techmart.service.UserService;

@Stateless
public class UserSessionBean implements UserService {

    @PersistenceContext(unitName = "TechMartPU")
    private EntityManager em;

    @Override
    public void save(User user) {
        em.persist(user);
    }

    @Override
    public User findById(int id) {
        return em.find(User.class, id);
    }

    @Override
    public void update(User user) {
        em.merge(user);
    }

    @Override
    public void delete(int id) {
        User user = em.find(User.class, id);
        if (user != null) {
            em.remove(user);
        }
    }
}