<%@ page import="java.util.List" %>
<%@ page import="lk.jiat.techmart.entity.CartItem" %>

<html>
<head>
    <title>Cart</title>
</head>

<body>

<h2>Your Cart</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Product Name</th>
        <th>Price</th>
        <th>Qty</th>
        <th>Total</th>
        <th>Action</th>
    </tr>

<%
    List<CartItem> list = (List<CartItem>) request.getAttribute("list");

    if (list != null) {
        for (CartItem c : list) {
%>

    <tr>
        <td><%= c.getId() %></td>
        <td><%= c.getProduct_name() %></td>
        <td><%= c.getPrice() %></td>
        <td><%= c.getQuantity() %></td>

        <td>
            <%= c.getPrice() * c.getQuantity() %>
        </td>

        <td>
            <form action="cart" method="post">
                <input type="hidden" name="action" value="delete"/>
                <input type="hidden" name="id" value="<%= c.getId() %>"/>
                <button>Remove</button>
            </form>
        </td>
    </tr>

<%
        }
    }
%>

</table>

<br>

<a href="product">← Back to Products</a>

</body>
</html>