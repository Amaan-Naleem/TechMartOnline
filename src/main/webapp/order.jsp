<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>TechMart Online — Place Order</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', sans-serif; background: #f0f2f5; }
        nav { background: #1a73e8; padding: 14px 30px; display: flex; justify-content: space-between; align-items: center; }
        nav h1 { color: #fff; font-size: 20px; }
        nav a { color: #fff; text-decoration: none; margin-left: 20px; font-size: 14px; }
        .container { max-width: 480px; margin: 60px auto; padding: 0 20px; }
        .card { background: #fff; border-radius: 12px; padding: 36px; box-shadow: 0 4px 20px rgba(0,0,0,0.1); }
        h2 { color: #1a73e8; margin-bottom: 22px; font-size: 20px; text-align: center; }
        label { font-size: 13px; color: #555; display: block; margin-bottom: 6px; }
        input[type=text] { width: 100%; padding: 11px 14px; border: 1px solid #ddd; border-radius: 8px; font-size: 14px; margin-bottom: 16px; outline: none; }
        input[type=text]:focus { border-color: #1a73e8; }
        .btn { width: 100%; padding: 13px; background: #1a73e8; color: #fff; border: none; border-radius: 8px; font-size: 15px; cursor: pointer; font-weight: 700; }
        .btn:hover { background: #1558b0; }
        .back { text-align: center; margin-top: 16px; }
        .back a { color: #1a73e8; font-size: 13px; text-decoration: none; }
    </style>
</head>
<body>
<nav>
    <h1>🛒 TechMart Online</h1>
    <div>
        <a href="home.jsp">Home</a>
        <a href="product">Products</a>
        <a href="cart">Cart</a>
    </div>
</nav>
<div class="container">
    <div class="card">
        <h2>📋 Place Order</h2>
        <form action="OrderServlet" method="post">
            <label>User ID</label>
            <input type="text" name="user" placeholder="Enter User ID" required />
            <label>Product ID</label>
            <input type="text" name="productId" placeholder="Enter Product ID" required />
            <button class="btn" type="submit">🚀 Place Order</button>
        </form>
        <div class="back"><a href="product">← Back to Products</a></div>
    </div>
</div>
</body>
</html>
