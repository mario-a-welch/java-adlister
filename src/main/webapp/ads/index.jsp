<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mario
  Date: 2/7/22
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Ads</title>
</head>
<body>
    <h1>Here are all the Ads!</h1>
    <c:forEach var = "ad" items="${Ads}">
        <div class="ad">
            <h2>${ad.title}</h2>
            <h4>${ad.description}</h4>
        </div>
    </c:forEach>
</body>
</html>