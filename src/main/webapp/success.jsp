<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>TechMart Online — Order Success</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', sans-serif; background: #f0f2f5; display: flex; flex-direction: column; align-items: center; justify-content: center; min-height: 100vh; }
        .card { background: #fff; border-radius: 16px; padding: 50px 40px; text-align: center; box-shadow: 0 4px 24px rgba(0,0,0,0.1); max-width: 440px; width: 100%; }
        .icon { font-size: 64px; margin-bottom: 18px; }
        h2 { color: #34a853; font-size: 24px; margin-bottom: 12px; }
        p { color: #666; font-size: 14px; margin-bottom: 28px; }
        .badge { background: #e6f4ea; color: #34a853; padding: 8px 18px; border-radius: 20px; font-size: 13px; font-weight: 600; display: inline-block; margin-bottom: 24px; }
        .actions { display: flex; gap: 14px; justify-content: center; flex-wrap: wrap; }
        .btn { padding: 11px 24px; border-radius: 8px; font-size: 14px; text-decoration: none; font-weight: 600; }
        .btn-primary { background: #1a73e8; color: #fff; }
        .btn-primary:hover { background: #1558b0; }
        .btn-secondary { background: #f0f2f5; color: #333; }
        .btn-secondary:hover { background: #e0e0e0; }
    </style>
</head>
<body>
<div class="card">
    <div class="icon">🎉</div>
    <h2>Order Placed Successfully!</h2>
    <div class="badge">✅ Payment Confirmed</div>
    <p>Your order has been processed. A JMS notification has been sent and your inventory has been updated asynchronously.</p>
    <div class="actions">
        <a href="product" class="btn btn-primary">🛍 Shop More</a>
        <a href="cart" class="btn btn-secondary">🛒 View Cart</a>
        <a href="home.jsp" class="btn btn-secondary">🏠 Home</a>
    </div>
</div>
</body>
</html>
