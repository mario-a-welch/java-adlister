<%--
  Created by IntelliJ IDEA.
  User: Mario
  Date: 2/4/22
  Time: 12:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Form</title>
</head>
<body>
    <h1>Pizza Form</h1>

    <form action="<%= request.getContextPath() %>/pizza-order" method="post">
<%--        Crust--%>
        <div>
            <label for="crust-type">Crust Type</label>
            <select name="crust-type" id="crust-type">
                <option value="hand-tossed">Hand-Tossed</option>
                <option value="deep-dish">Deep Dish</option>
                <option value="thin-crust">Thin Crust</option>
                <option value="ny-style">NY Style</option>
            </select>
        </div>
        <br>
<%--    Sauce Type--%>
        <div>
            <label for="sauce-type">Sauce Type</label>
            <select name="sauce-type" id="sauce-type">
                <option value="marinara">Marinara</option>
                <option value="alfredo">Alfredo</option>
                <option value="pesto">Pesto</option>
                <option value="garlic">Garlic</option>
            </select>
        </div>
        <br>
<%--    Size Type--%>
        <div>
            <label for="size-type">Size Type</label>
            <select name="size-type" id="size-type">
                <option value="small">Small-8"</option>
                <option value="medium">Medium-10"</option>
                <option value="large">Large-12"</option>
                <option value="x-large">X-Large-16"</option>
            </select>
        </div>
        <br>
<%--    Toppings--%>
        <div>
            <p>Toppings</p>

            <div>
                <input type="checkbox" id="pepperoni" value="pepperoni" name="toppings">
                <label for="pepperoni">Pepperoni</label>
            </div>
            <div>
                <input type="checkbox" id="sausage" value="sausage" name="toppings">
                <label for="sausage">Sausage</label>
            </div>
            <div>
                <input type="checkbox" id="bacon" value="bacon" name="toppings">
                <label for="bacon">Bacon</label>
            </div>
            <div>
                <input type="checkbox" id="cheese" value="cheese" name="toppings">
                <label for="cheese">Cheese</label>
            </div>

        </div>
        <br>
<%--    Delivery Address--%>
        <div>
            <label for="delivery-address">Delivery Address</label>
            <input id="delivery-address" type="text" name="delivery-address" placeholder="Enter address">
        </div>
        <br>
<%--        Submit Button--%>
        <button>Submit Order</button>
    </form>
</body>
</html>
