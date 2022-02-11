<%--
  Created by IntelliJ IDEA.
  User: Mario
  Date: 2/10/22
  Time: 3:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create A New User " />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Create A New User</h1>
    <form action="/register" method="post">
        <div class="form-group">
            <label for="user">Username</label>
            <input id="user" name="user" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-block btn-primary" value="submit">
    </form>
</div>
</body>
</html>
