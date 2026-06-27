package lk.jiat.techmart.service;

import lk.jiat.techmart.entity.User;

public interface UserService {

    void save(User user);
     User findById(int id);

     void update(User user);

     void delete(int id);
}
