package lk.jiat.techmart.controller;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import lk.jiat.techmart.entity.Product;
import lk.jiat.techmart.service.ProductService;

import java.io.IOException;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {

    @EJB
    private ProductService productBean;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setAttribute("list", productBean.findAll());
        req.getRequestDispatcher("product.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

        String action = req.getParameter("action");

        if ("save".equals(action)) {

            Product p = new Product();
            p.setName(req.getParameter("name"));
            p.setPrice(Double.parseDouble(req.getParameter("price")));

            String qtyStr = req.getParameter("qty");
            int qty = 0;

            if (qtyStr != null && !qtyStr.isEmpty()) {
                qty = Integer.parseInt(qtyStr);
            }

            p.setStock_quantity(qty);

            productBean.save(p);

        } else if ("delete".equals(action)) {

            int id = Integer.parseInt(req.getParameter("id"));
            productBean.delete(id);
        }

        resp.sendRedirect("product");
    }
}