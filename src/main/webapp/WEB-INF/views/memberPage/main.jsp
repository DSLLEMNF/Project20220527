<%--
  Created by IntelliJ IDEA.
  User: dlwng
  Date: 2022-05-30
  Time: 오후 3:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="icon" type="image/x-icon" href="/resources/img/xicon.png">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <style>
        #a{
        margin-top: 250px ;
        }
        #a1{
            margin-top: 280px;
        }
    </style>
</head>
<body>
<div class="py-5 text-center" id="a">
<a href="/shopPage/news"><h1>토트넘 핫스퍼에 방문하셔서<br>
    감사합니다.</h1></a>
</div>
<div class="py-5 text-center" id="a1">
<c:if test="${sessionScope.loginMemberId eq 'admin'}">
    <a href="/memberPage/findAll" >ADMIN</a>
</c:if>
    <c:if test="${sessionScope.loginMemberId eq 'admin'}">
        <a href="/shopPage/product" >PRODUCT</a>
    </c:if>
    <c:if test="${sessionScope.loginMemberId eq 'admin'}">
        <a href="/shopPage/order" >ORDER</a>
    </c:if>
</div>
</body>
</html>