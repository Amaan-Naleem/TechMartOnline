package lk.jiat.techmart.controller;

import jakarta.ejb.EJB;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import lk.jiat.techmart.entity.Orders;
import lk.jiat.techmart.entity.Product;
import lk.jiat.techmart.entity.User;
import lk.jiat.techmart.service.OrderService;

import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {

    @EJB
    private OrderService orderService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        resp.setContentType("text/plain");

        try {
            String userParam = req.getParameter("user");
            String productParam = req.getParameter("productId");

            if (userParam == null || productParam == null) {
                resp.getWriter().println("Missing user or productId");
                return;
            }

            int userId = Integer.parseInt(userParam);
            int productId = Integer.parseInt(productParam);

            User user = orderService.findUserById(userId);
            Product product = orderService.findProductById(productId);

            if (user == null || product == null) {
                resp.getWriter().println("Invalid user or product");
                return;
            }

            Orders order = new Orders();
            order.setUser(user);
            order.setProduct(product);
            order.setOrderDate(LocalDateTime.now());

            orderService.save(order);

            resp.getWriter().println("Order Saved Successfully");

        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().println("Order Failed");
        }
    }
}