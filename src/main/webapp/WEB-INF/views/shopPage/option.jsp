<%--
  Created by IntelliJ IDEA.
  User: dlwng
  Date: 2022-06-16
  Time: 오전 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="icon" type="image/x-icon" href="/resources/img/xicon.png">
</head>
<body>
<div class="container">
        <div>
            <p><img class="mb-2" src="${pageContext.request.contextPath}/upload/${shop.PFileName}" alt=""></p>
        </div>
        <div>
            <p>${shop.PName}</p>
        </div>
        <div>
            <p>${shop.PPrice}원</p>
        </div>
    <form action="/shopPage/count" method="post">
        <input class="form-control mb-2" type="int" name="cQuantity" placeholder="수량" id="quantity">
        <input class="form-control mb-2" type="hidden" name="cName" placeholder="수량" value="${shop.PName}">
        <input class="form-control mb-2" type="hidden" name="cPrice" value="${shop.PPrice}">
        <input type="submit" class="btn-primary" value="장바구니 추가">
    </form>
</div>
</body>
<script>
</script>
</html>
