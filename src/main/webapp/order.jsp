<%--
  Created by IntelliJ IDEA.
  User: Amaan
  Date: 6/27/2026
  Time: 7:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Order Page</title>
  </head>
  <body>

<h3>Place Order</h3>

<form action="OrderServlet" method="post">

    <input type="text" name="user" placeholder="User ID"/>

    <input type="text" name="productId" placeholder="Product ID"/>

    <button type="submit">Place Order</button>

</form>
  </body>
</html>
