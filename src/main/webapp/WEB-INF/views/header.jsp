<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon"
          href="https://i.imgur.com/NdUcHuw.png?1"
          type="image/x-icon">
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
    <link crossorigin="anonymous" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script crossorigin="anonymous"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script crossorigin="anonymous"
            integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Chivo:300,700|Playfair+Display:700i" rel="stylesheet">
    <style>
        body {
            background: url("https://i.imgur.com/EPZYNpE.png?2");
            width: 100%;
            height: 100%;
            z-index: 0;
            position: absolute;
            font-family: 'Lora', serif;
            font-weight: 500;
            min-width: 2280px;
        }

        .header {
            padding: 70px;
            background: linear-gradient(-45deg, #c4ffdc, #2fb9fa, #c06bff, #ff739f, #fffd80);
            background-size: 400% 400%;
            animation: gradient 15s ease infinite;
            font-family: 'Chivo', sans-serif;
            font-weight: 300;
        }

        @keyframes gradient {
            0% {
                background-position: 0 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0 50%;
            }
        }

        h1 {
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-style: italic;
        }

        h2, h3, h4, h5, h6 {
            font-family: 'Montserrat', sans-serif;
            font-weight: 300;
        }

        html, body {
            margin: 0;
            padding: 0;
        }

        .navbar {
            padding: 30px;
        }
    </style>
</head>
<body>
<div class="header"
     style="text-align: center">
    <h1 style="font-size: 500%">Top Store</h1>
    <h4 style="font-size: 200%"><em>High-quality cosmetics must-haves</em></h4>
</div>
<div class="navbar navbar-expand-lg navbar-dark bg-dark"
     style="font-family: 'Montserrat', sans-serif;
        text-transform: uppercase;
        font-size: x-large;
        text-align: center">
    <div class="container" align="left" style="padding-bottom: 50px">
        <ul class="navbar-nav">
            <li class="nav-item active" style="width: 100px; position: absolute; left: 30px">
                <a class="nav-link" href="${pageContext.request.contextPath}/">Home</a>
            </li>
            <li class="nav-item active" style="width: 150px; position: absolute; left: 170px">
                <a class="nav-link" href="${pageContext.request.contextPath}/products/all">Products</a>
            </li>
            <li class="nav-item active" style="width: 260px; position: absolute; left: 380px">
                <a class="nav-link" href="${pageContext.request.contextPath}/products/all/admin">Products (Admin)</a>
            </li>
            <li class="nav-item active" style="width: 210px; position: absolute; left: 680px">
                <a class="nav-link" href="${pageContext.request.contextPath}/users/all">Users (Admin)</a>
            </li>
            <li class="nav-item active" style="width: 230px; position: absolute; left: 930px">
                <a class="nav-link" href="${pageContext.request.contextPath}/orders/all">Orders (Admin)</a>
            </li>
            <li class="nav-item active" style="width: 180px; position: absolute; left: 1200px">
                <a class="nav-link" href="${pageContext.request.contextPath}/user/orders">My Orders</a>
            </li>
            <li class="nav-item active" style="width: 240px; position: absolute; left: 1410px">
                <a class="nav-link" href="${pageContext.request.contextPath}/shopping-cart">Shopping cart</a>
            </li>
            <li class="nav-item active" style="width: 130px; position: absolute; right: 475px">
                <a class="nav-link" href="${pageContext.request.contextPath}/registration">Sign Up</a>
            </li>
            <li class="nav-item active" style="width: 130px; position: absolute; right: 305px">
                <a class="nav-link" href="${pageContext.request.contextPath}/login">Sign In</a>
            </li>
            <li class="nav-item active" style="width: 250px; position: absolute; right: 30px">
                <a class="nav-link" href="${pageContext.request.contextPath}/user/details?id=1">Account Details</a>
            </li>
        </ul>
    </div>
</div>
</body>
</html>
