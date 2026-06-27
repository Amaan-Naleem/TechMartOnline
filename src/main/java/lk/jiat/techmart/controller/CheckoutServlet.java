package lk.jiat.techmart.controller;

import jakarta.ejb.EJB;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import lk.jiat.techmart.entity.CartItem;
import lk.jiat.techmart.entity.Orders;
import lk.jiat.techmart.entity.Product;
import lk.jiat.techmart.entity.User;
import lk.jiat.techmart.service.CartService;
import lk.jiat.techmart.service.OrderService;

import java.io.IOException;
import java.util.List;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {

    @EJB
    private CartService cartBean;

    @EJB
    private OrderService orderBean;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        int userId = Integer.parseInt(req.getParameter("userId"));

        User user = orderBean.findUserById(userId);

        List<CartItem> cartItems = cartBean.getCartItems();

        for (CartItem item : cartItems) {

            Orders order = new Orders();
            order.setUser(user);
            order.setProduct(item.getProduct());

            orderBean.save(order);
        }

        cartBean.clearCart();

        resp.sendRedirect("success.jsp");
    }
}