<%--
  Created by IntelliJ IDEA.
  User: Mario
  Date: 2/4/22
  Time: 3:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guessing Game</title>
</head>
<body>
<h1>Pick A Number (1, 2, or 3)</h1>
<form action="/guess" method="post">
    <input type="number" name="guess" id="guess" placeholder="Enter 1, 2 , or 3">
    <button>Submit</button>
</form>
</body>
</html>
