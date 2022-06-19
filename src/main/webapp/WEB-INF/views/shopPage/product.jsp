<%--
  Created by IntelliJ IDEA.
  User: dlwng
  Date: 2022-06-14
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/save.css">
    <link rel="icon" type="image/x-icon" href="/resources/img/xicon.png">
</head>
<body>
<div id="header">
    <a href="/memberPage/main-form" target="_blank" title="signing"><img src="/resources/img/tottnhamIcon.jpg" id="logo"></a>
</div>
<div class="container">
    <div class="py-5 text-center">
    <form action="/shopPage/product" method="post" enctype="multipart/form-data">
        <input class="form-control mb-2" type="text" name="pName" placeholder="제품명">
        <input class="form-control mb-2" type="int" name="pPrice" placeholder="제품가격">
        <input class="form-control mb-2" type="file" name="pFile" placeholder="제품사진">
        <input class="form-control mb-2" type="hidden" name="pQuantity" value= "1">
        <input class="btn btn-primary" type="submit" value="등록">
    </form>
    </div>
</div>
</body>
</html>
