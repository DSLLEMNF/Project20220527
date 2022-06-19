<%--
  Created by IntelliJ IDEA.
  User: dlwng
  Date: 2022-06-10
  Time: 오후 3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <title></title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="icon" type="image/x-icon" href="/resources/img/xicon.png">
</head>
<body>
<c:forEach items="${CartList}" var="cart">
    <table class="table">
        <tr>
    <div class="card-body p-4">
        <div class="text-center">
            <!-- Product name-->
            <td><h5 class="fw-bolder">${cart.CName}</h5></td>
            <!-- Product price-->
            <td><h5 class="fw-bolder">${cart.CPrice}원</h5></td>

            <td><h5 class="fw-bolder">${cart.CQuantity}개</h5></td>
        </div>
    </div>
        </tr>
    </table>
</c:forEach>
</table>
</div>
</body>
</html>

