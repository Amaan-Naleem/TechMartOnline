<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="lk.jiat.techmart.entity.User" %>

<%
    User user = (User) session.getAttribute("user");

    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>

<body>

<h2>Welcome, <%= user.getUsername() %></h2>

<p>You are logged in successfully.</p>

<br>

<a href="product">Products</a> <br><br>
<a href="cart">Cart</a> <br><br>
<a href="checkout.jsp">Checkout</a> <br><br>

<form action="logout" method="post">
    <button type="submit">Logout</button>
</form>

</body>
</html>