<%@ page import="java.util.List" %>
<%@ page import="lk.jiat.techmart.entity.Product" %>

<html>
<head>
    <title>Product Management</title>
</head>

<body>

<h2>Add Product</h2>

<form action="product" method="post">
    <input type="hidden" name="action" value="save"/>

    Name: <input type="text" name="name"><br>
    Price: <input type="text" name="price"><br>
    Qty: <input type="text" name="qty"><br>

    <button type="submit">Save</button>
</form>

<hr>

<h2>Product List</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Qty</th>
        <th>Action</th>
    </tr>

    <%
        // temporary simple list (we will improve later)
        List<Product> list = (List<Product>) request.getAttribute("list");

        if (list != null) {
            for (Product p : list) {
    %>

    <tr>
        <td><%= p.getId() %></td>
        <td><%= p.getName() %></td>
        <td><%= p.getPrice() %></td>
      <td><%= p.getStock_quantity() %></td>

        <td>
            <form action="product" method="post">
                <input type="hidden" name="action" value="delete"/>
                <input type="hidden" name="id" value="<%= p.getId() %>"/>
                <button>Delete</button>
            </form>
        </td>
    </tr>

    <%
            }
        }
    %>

</table>

</body>
</html>