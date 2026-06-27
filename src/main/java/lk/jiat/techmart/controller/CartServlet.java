package lk.jiat.techmart.controller;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import lk.jiat.techmart.entity.CartItem;
import lk.jiat.techmart.entity.Product;
import lk.jiat.techmart.service.CartService;

import java.io.IOException;
import java.util.List;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

    @EJB
    private CartService cartBean;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        String action = req.getParameter("action");

        if ("add".equals(action)) {

            CartItem item = new CartItem();

            int productId = Integer.parseInt(req.getParameter("productId"));

            // FIX: correct parameter name from JSP
            String name = req.getParameter("productName");

            double price = Double.parseDouble(req.getParameter("price"));

            String qtyStr = req.getParameter("qty");
            int qty = 1;

            if (qtyStr != null && !qtyStr.isEmpty()) {
                qty = Integer.parseInt(qtyStr);
            }

            Product p = new Product();
            p.setId(productId);

            item.setProduct(p);
            item.setProduct_name(name);
            item.setPrice(price);
            item.setQuantity(qty);

            cartBean.addToCart(item);
        }

        else if ("delete".equals(action)) {
            int id = Integer.parseInt(req.getParameter("id"));
            cartBean.removeItem(id);
        }

        resp.sendRedirect("cart");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<CartItem> list = cartBean.getCartItems();
        req.setAttribute("list", list);

        req.getRequestDispatcher("cart.jsp").forward(req, resp);
    }
}