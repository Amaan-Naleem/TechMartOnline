<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>TechMart Online — Register</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', sans-serif; background: #f0f2f5; display: flex; justify-content: center; align-items: center; min-height: 100vh; }
        .card { background: #fff; padding: 40px; border-radius: 12px; box-shadow: 0 4px 20px rgba(0,0,0,0.1); width: 100%; max-width: 400px; }
        .logo { text-align: center; margin-bottom: 28px; }
        .logo h1 { color: #1a73e8; font-size: 26px; }
        .logo p { color: #888; font-size: 13px; margin-top: 4px; }
        h2 { text-align: center; color: #333; margin-bottom: 24px; font-size: 20px; }
        input { width: 100%; padding: 12px 14px; margin-bottom: 16px; border: 1px solid #ddd; border-radius: 8px; font-size: 14px; outline: none; transition: border 0.2s; }
        input:focus { border-color: #1a73e8; }
        button { width: 100%; padding: 12px; background: #34a853; color: #fff; border: none; border-radius: 8px; font-size: 15px; cursor: pointer; font-weight: 600; }
        button:hover { background: #2d8e47; }
        .footer-link { text-align: center; margin-top: 16px; font-size: 13px; color: #666; }
        .footer-link a { color: #1a73e8; text-decoration: none; }
    </style>
</head>
<body>
<div class="card">
    <div class="logo">
        <h1>🛒 TechMart Online</h1>
        <p>Enterprise E-Commerce Platform</p>
    </div>
    <h2>Create Account</h2>
    <form action="register" method="post">
        <input type="text" name="username" placeholder="Username" required />
        <input type="email" name="email" placeholder="Email Address" required />
        <input type="password" name="password" placeholder="Password" required />
        <button type="submit">Register</button>
    </form>
    <div class="footer-link">Already have an account? <a href="login.jsp">Sign in here</a></div>
</div>
</body>
</html>
