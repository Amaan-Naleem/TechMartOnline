<%@ page import="java.util.List" %>
<%@ page import="lk.jiat.techmart.entity.CartItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>TechMart Online — Cart</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', sans-serif; background: #f0f2f5; }
        nav { background: #1a73e8; padding: 14px 30px; display: flex; justify-content: space-between; align-items: center; }
        nav h1 { color: #fff; font-size: 20px; }
        nav a { color: #fff; text-decoration: none; margin-left: 20px; font-size: 14px; }
        .container { max-width: 860px; margin: 30px auto; padding: 0 20px; }
        .section { background: #fff; border-radius: 12px; padding: 28px; box-shadow: 0 2px 12px rgba(0,0,0,0.07); }
        h2 { color: #1a73e8; margin-bottom: 20px; font-size: 18px; }
        table { width: 100%; border-collapse: collapse; }
        thead { background: #1a73e8; color: #fff; }
        th { padding: 12px 14px; text-align: left; font-size: 13px; }
        td { padding: 11px 14px; border-bottom: 1px solid #f0f0f0; font-size: 14px; }
        tr:hover td { background: #f8f9ff; }
        .btn-remove { background: #d32f2f; color: #fff; border: none; padding: 7px 14px; border-radius: 6px; font-size: 13px; cursor: pointer; }
        .btn-remove:hover { background: #b71c1c; }
        .total-row td { font-weight: 700; background: #f8f9ff; color: #333; }
        .actions { margin-top: 20px; display: flex; gap: 14px; }
        .btn-back { background: #888; color: #fff; padding: 10px 22px; border-radius: 8px; text-decoration: none; font-size: 14px; }
        .btn-checkout { background: #ff6d00; color: #fff; border: none; padding: 10px 22px; border-radius: 8px; font-size: 14px; cursor: pointer; font-weight: 600; text-decoration: none; }
        .btn-checkout:hover { background: #e65100; }
        .empty { text-align: center; color: #888; padding: 40px 0; font-size: 15px; }
    </style>
</head>
<body>
<nav>
    <h1>🛒 TechMart Online</h1>
    <div>
        <a href="home.jsp">Home</a>
        <a href="product">Products</a>
        <a href="checkout.jsp">Checkout</a>
    </div>
</nav>
<div class="container">
    <div class="section">
        <h2>🛒 Your Cart</h2>
        <%
            List<CartItem> list = (List<CartItem>) request.getAttribute("list");
            double grandTotal = 0;
            if (list != null && !list.isEmpty()) {
        %>
        <table>
            <thead>
                <tr><th>ID</th><th>Product</th><th>Price</th><th>Qty</th><th>Total</th><th>Action</th></tr>
            </thead>
            <tbody>
            <% for (CartItem c : list) {
                double itemTotal = c.getPrice() * c.getQuantity();
                grandTotal += itemTotal; %>
            <tr>
                <td><%= c.getId() %></td>
                <td><%= c.getProduct_name() %></td>
                <td>LKR <%= c.getPrice() %></td>
                <td><%= c.getQuantity() %></td>
                <td>LKR <%= itemTotal %></td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="action" value="delete"/>
                        <input type="hidden" name="id" value="<%= c.getId() %>"/>
                        <button class="btn-remove">🗑 Remove</button>
                    </form>
                </td>
            </tr>
            <% } %>
            <tr class="total-row">
                <td colspan="4" style="text-align:right;">Grand Total:</td>
                <td colspan="2">LKR <%= grandTotal %></td>
            </tr>
            </tbody>
        </table>
        <% } else { %>
        <div class="empty">🛒 Your cart is empty. <a href="product">Browse products</a></div>
        <% } %>
        <div class="actions">
            <a href="product" class="btn-back">← Back to Products</a>
            <a href="checkout.jsp" class="btn-checkout">💳 Proceed to Checkout</a>
        </div>
    </div>
</div>
</body>
</html>
