<%--
  Created by IntelliJ IDEA.
  User: Mario
  Date: 2/4/22
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick-A-Color</title>
</head>
<body>
    <h1>Pick A Color</h1>
        <form action="/pickcolor" method="post">
            <input type="text" name="color" id="color" placeholder="Enter your favorite color">
            <button>Submit</button>
        </form>
</body>
</html>
