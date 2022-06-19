<%--
  Created by IntelliJ IDEA.
  User: dlwng
  Date: 2022-05-27
  Time: 오전 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="icon" type="image/x-icon" href="/resources/img/xicon.png">
    <link rel="stylesheet" href="/resources/css/index.css">
    <style>
    </style>
</head>
<body>
<div class="topnav" id="myTopnav">
    <a href="/" class="active" --%><img src ="/resources/img/tottnhamIcon.jpg" width="40px" height="30px"></a>
    <a href="/memberPage/save-form">JoinUs</a>
    <a href="/memberPage/page">About</a>
</div>

<div class="bg-img">
    <form action="/login" class="container" method="post">
        <%--@declare id="id"--%><%--@declare id="psw"--%>
        <h1>Login</h1>

        <label for="id"><b>ID</b></label>
        <input type="text" placeholder="Enter your Id"  name="memberId" required>

        <label for="psw"><b>PASSWORD</b></label>
        <input type="password" placeholder="Enter Password" name="memberPassword" required>
        <input type="submit" class="btn" value="LOGIN">
    </form>
</div>
</body>
<script>

</script>
</html>
