<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="lk.jiat.techmart.entity.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) { response.sendRedirect("login.jsp"); return; }
%>
<!DOCTYPE html>
<html>
<head>
    <title>TechMart Online — Home</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', sans-serif; background: #f0f2f5; }
        nav { background: #1a73e8; padding: 14px 30px; display: flex; justify-content: space-between; align-items: center; }
        nav h1 { color: #fff; font-size: 20px; }
        nav .nav-links a { color: #fff; text-decoration: none; margin-left: 20px; font-size: 14px; }
        nav .nav-links a:hover { text-decoration: underline; }
        .hero { background: linear-gradient(135deg, #1a73e8, #0d47a1); color: #fff; padding: 60px 30px; text-align: center; }
        .hero h2 { font-size: 32px; margin-bottom: 10px; }
        .hero p { font-size: 16px; opacity: 0.9; }
        .cards { display: flex; gap: 20px; padding: 40px 30px; flex-wrap: wrap; justify-content: center; }
        .card { background: #fff; border-radius: 12px; padding: 30px; width: 200px; text-align: center; box-shadow: 0 2px 12px rgba(0,0,0,0.08); text-decoration: none; color: #333; transition: transform 0.2s; }
        .card:hover { transform: translateY(-4px); box-shadow: 0 6px 20px rgba(0,0,0,0.12); }
        .card .icon { font-size: 36px; margin-bottom: 12px; }
        .card h3 { font-size: 15px; color: #1a73e8; }
        .logout-wrap { text-align: center; padding-bottom: 40px; }
        .logout-btn { background: #d32f2f; color: #fff; border: none; padding: 10px 28px; border-radius: 8px; font-size: 14px; cursor: pointer; }
        .logout-btn:hover { background: #b71c1c; }
        .metrics-link { display: block; margin-top: 10px; color: #1a73e8; font-size: 13px; text-decoration: none; }
    </style>
</head>
<body>
<nav>
    <h1>🛒 TechMart Online</h1>
    <div class="nav-links">
        <a href="product">Products</a>
        <a href="cart">Cart</a>
        <a href="checkout.jsp">Checkout</a>
        <a href="metrics">📊 Metrics</a>
    </div>
</nav>
<div class="hero">
    <h2>Welcome back, <%= user.getUsername() %>! 👋</h2>
    <p>Your enterprise shopping experience powered by Jakarta EE</p>
</div>
<div class="cards">
    <a href="product" class="card">
        <div class="icon">📦</div>
        <h3>Products</h3>
    </a>
    <a href="cart" class="card">
        <div class="icon">🛒</div>
        <h3>My Cart</h3>
    </a>
    <a href="checkout.jsp" class="card">
        <div class="icon">💳</div>
        <h3>Checkout</h3>
    </a>
    <a href="metrics" class="card">
        <div class="icon">📊</div>
        <h3>Metrics</h3>
    </a>
</div>
<div class="logout-wrap">
    <form action="logout" method="post" style="display:inline;">
        <button class="logout-btn" type="submit">Logout</button>
    </form>
</div>
</body>
</html>
