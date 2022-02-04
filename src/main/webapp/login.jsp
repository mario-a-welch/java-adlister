<%--
  Created by IntelliJ IDEA.
  User: Mario
  Date: 2/3/22
  Time: 11:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">--%>
    <%@include file="partials/head.jsp"%>
</head>
<body>
    <%@include file="partials/navbar.jsp"%>

<%--    <%--%>
<%--        if(request.getMethod().equalsIgnoreCase("post")) {--%>
<%--            String username = request.getParameter("username");--%>
<%--            String password = request.getParameter("password");--%>
<%--            if ((username.equals("admin") && password.equals("password"))) {--%>
<%--                response.sendRedirect("profile.jsp");--%>
<%--            } else {--%>
<%--                response.sendRedirect("login.jsp");--%>
<%--            }--%>
<%--        }--%>
<%--    %>--%>

    <c:choose>
        <c:when test="${param.username.equals('admin') && param.password.equals('password')}">
            <% response.sendRedirect("profile.jsp"); %>
        </c:when>
    </c:choose>

    <div class="container">
        <form method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input  id="username"  name="username" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input name="password"  type="password" class="form-control" id="password">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <%@include file="partials/scripts.jsp"%>
<%--    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>--%>
</body>
</html>
