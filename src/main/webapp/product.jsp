<%@ page import="java.util.List" %>
<%@ page import="lk.jiat.techmart.entity.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>TechMart Online — Products</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', sans-serif; background: #f0f2f5; }
        nav { background: #1a73e8; padding: 14px 30px; display: flex; justify-content: space-between; align-items: center; }
        nav h1 { color: #fff; font-size: 20px; }
        nav .nav-links a { color: #fff; text-decoration: none; margin-left: 20px; font-size: 14px; }
        .container { max-width: 900px; margin: 30px auto; padding: 0 20px; }
        .section { background: #fff; border-radius: 12px; padding: 28px; margin-bottom: 24px; box-shadow: 0 2px 12px rgba(0,0,0,0.07); }
        h2 { color: #1a73e8; margin-bottom: 18px; font-size: 18px; }
        .form-row { display: flex; gap: 12px; flex-wrap: wrap; margin-bottom: 14px; }
        input[type=text] { flex: 1; min-width: 140px; padding: 10px 12px; border: 1px solid #ddd; border-radius: 8px; font-size: 14px; outline: none; }
        input[type=text]:focus { border-color: #1a73e8; }
        .btn-save { background: #1a73e8; color: #fff; border: none; padding: 10px 22px; border-radius: 8px; font-size: 14px; cursor: pointer; font-weight: 600; }
        .btn-save:hover { background: #1558b0; }
        table { width: 100%; border-collapse: collapse; }
        thead { background: #1a73e8; color: #fff; }
        th { padding: 12px 14px; text-align: left; font-size: 13px; }
        td { padding: 11px 14px; border-bottom: 1px solid #f0f0f0; font-size: 14px; }
        tr:hover td { background: #f8f9ff; }
        .btn-cart { background: #34a853; color: #fff; border: none; padding: 7px 16px; border-radius: 6px; font-size: 13px; cursor: pointer; }
        .btn-cart:hover { background: #2d8e47; }
        .btn-checkout { display: inline-block; margin-top: 16px; background: #ff6d00; color: #fff; border: none; padding: 11px 28px; border-radius: 8px; font-size: 14px; cursor: pointer; font-weight: 600; text-decoration: none; }
        .btn-checkout:hover { background: #e65100; }
        .nav-links a:hover { text-decoration: underline; }
    </style>
</head>
<body>
<nav>
    <h1>🛒 TechMart Online</h1>
    <div class="nav-links">
        <a href="home.jsp" style="color:#fff;text-decoration:none;margin-left:20px;">Home</a>
        <a href="cart" style="color:#fff;text-decoration:none;margin-left:20px;">Cart</a>
        <a href="checkout.jsp" style="color:#fff;text-decoration:none;margin-left:20px;">Checkout</a>
    </div>
</nav>
<div class="container">
    <div class="section">
        <h2>➕ Add New Product</h2>
        <form action="product" method="post">
            <input type="hidden" name="action" value="save"/>
            <div class="form-row">
                <input type="text" name="name" placeholder="Product Name" required />
                <input type="text" name="price" placeholder="Price (LKR)" required />
                <input type="text" name="qty" placeholder="Quantity" required />
            </div>
            <button class="btn-save" type="submit">Save Product</button>
        </form>
    </div>
    <div class="section">
        <h2>📦 Product List</h2>
        <table>
            <thead>
                <tr><th>ID</th><th>Name</th><th>Price</th><th>Stock</th><th>Action</th></tr>
            </thead>
            <tbody>
            <%
                List<Product> list = (List<Product>) request.getAttribute("list");
                if (list != null) {
                    for (Product p : list) {
            %>
            <tr>
                <td><%= p.getId() %></td>
                <td><%= p.getName() %></td>
                <td>LKR <%= p.getPrice() %></td>
                <td><%= p.getStock_quantity() %></td>
                <td>
                    <form action="cart" method="post" style="display:inline;">
                        <input type="hidden" name="action" value="add"/>
                        <input type="hidden" name="productId" value="<%= p.getId() %>"/>
                        <input type="hidden" name="productName" value="<%= p.getName() %>"/>
                        <input type="hidden" name="price" value="<%= p.getPrice() %>"/>
                        <input type="hidden" name="qty" value="1"/>
                        <button class="btn-cart">🛒 Add to Cart</button>
                    </form>
                </td>
            </tr>
            <% } } %>
            </tbody>
        </table>
        <form action="checkout.jsp" method="get">
            <button class="btn-checkout" type="submit">💳 Go to Checkout</button>
        </form>
    </div>
</div>
</body>
</html>
