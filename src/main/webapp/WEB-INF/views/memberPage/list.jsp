<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-23
  Time: 오후 1:54
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
</head>
<body>
<div class="container">
    <table class="table">
        <tr>
            <th>관리번호</th>
            <th>아이디</th>
            <th>비밀번호</th>
            <th>이름</th>
            <th>나이</th>
            <th>이메일</th>
            <th>전화번호</th>
            <th>첨부파일명</th>
        </tr>
        <c:forEach items="${MemberList}" var="member">
            <tr>
                <td>${member.id}</td>
                <td>${member.memberId}</td>
                <td>${member.memberPassword}</td>
                <td>${member.memberName}</td>
                <td>${member.memberAge}</td>
                <td>${member.memberEmail}</td>
                <td>${member.memberPhone}</td>
                <td>${member.memberProFileName}</td>
                <td><a href="/memberPage/detail?id=${member.id}">조회</a></td>
                <td><a href="/memberPage/delete?id=${member.id}">삭제</a></td>
            </tr>
        </c:forEach>
    </table>
    <div id="detail">
</div>
</div>
</body>
</html>
