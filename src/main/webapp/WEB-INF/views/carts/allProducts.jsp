<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Top Store | Shopping Cart</title>
</head>
<style>
    .btn-light {
        font-family: 'Montserrat', sans-serif;
        text-transform: uppercase;
        width: 200px;
    }

    .btn-dark {
        font-family: 'Montserrat', sans-serif;
        text-transform: uppercase;
        width: 200px;
    }
</style>
<body>
<%@include file="../header.jsp" %>
<br>
<div class="container" align="center" style="text-align: center">
    <h2> Shopping Cart </h2>
    <br>
    <table class="table table-hover" style="width: 1200px;
        text-align: center;
        background: rgba(0, 0, 0, 0.5);
        font-family: 'Montserrat', sans-serif;
        text-transform: uppercase;
        font-size: x-large;
        color: white">
        <thead class="thead-dark">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}">
            <tr>
                <th scope="row" style="padding-top: 20px">
                    <c:out value="${product.id}"/>
                </th>
                <td style="text-align: center; padding-top: 20px">
                    <c:out value="${product.name}"/>
                </td>
                <td style="text-align: center; padding-top: 20px">
                    <c:out value="${product.price}0 UAH"/>
                </td>
                <td style="text-align: center">
                    <a href="${pageContext.request.contextPath}/shopping-cart/delete?id=${product.id}"
                       class="btn btn-light">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <br>
    <a href="${pageContext.request.contextPath}/order/complete?cartId=${cartId}"
       class="btn btn-dark">Create order</a>
    <a href="${pageContext.request.contextPath}/" class="btn btn-dark"> Go Back </a>
</div>
</body>
</html>
