<%--
  Created by IntelliJ IDEA.
  User: Amaan
  Date: 6/27/2026
  Time: 4:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Login</title>
</head>
<body>

<h2>Login</h2>

<form action="login" method="post">

    <input type="text" name="username" placeholder="Username" required />
    <br/><br/>

    <input type="password" name="password" placeholder="Password" required />
    <br/><br/>

    <button type="submit">Login</button>

</form>

<%
    String error = request.getParameter("error");
    if (error != null) {
%>
    <p style="color:red;">Invalid username or password</p>
<%
    }
%>

</body>
</html>
