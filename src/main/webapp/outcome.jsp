<%--
  Created by IntelliJ IDEA.
  User: Mario
  Date: 2/4/22
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Outcome</title>
</head>
<body>
<choose>
    <c:when test="true">
        <h1>You Won!!!</h1>
    </c:when>
    <c:when test="false">
        <h1>You Lost!!!</h1>
    </c:when>
</choose>

</body>
</html>
