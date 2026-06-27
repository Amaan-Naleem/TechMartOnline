package lk.jiat.techmart.service;

import lk.jiat.techmart.entity.User;

public interface AuthService {
    User login(String username, String password);
    void register(User user);
}