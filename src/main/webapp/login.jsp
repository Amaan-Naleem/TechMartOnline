<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>TechMart Online — Login</title>
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
        button { width: 100%; padding: 12px; background: #1a73e8; color: #fff; border: none; border-radius: 8px; font-size: 15px; cursor: pointer; font-weight: 600; }
        button:hover { background: #1558b0; }
        .error { color: #d32f2f; background: #fdecea; padding: 10px; border-radius: 6px; font-size: 13px; margin-bottom: 14px; text-align: center; }
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
    <h2>Sign In</h2>
    <% String error = request.getParameter("error");
       if (error != null) { %>
    <div class="error">Invalid username or password. Please try again.</div>
    <% } %>
    <form action="login" method="post">
        <input type="text" name="username" placeholder="Username" required />
        <input type="password" name="password" placeholder="Password" required />
        <button type="submit">Login</button>
    </form>
    <div class="footer-link">Don't have an account? <a href="register.jsp">Register here</a></div>
</div>
</body>
</html>
