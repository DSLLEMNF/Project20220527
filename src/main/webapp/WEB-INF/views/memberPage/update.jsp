<%--
  Created by IntelliJ IDEA.
  User: dlwng
  Date: 2022-05-31
  Time: 오전 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="icon" type="image/x-icon" href="/resources/img/xicon.png">
    <style>
        .container {
            max-width: 500px;
        }
    </style>
</head>
<body>
<jsp:include page="../layout/header1.jsp" flush="false"></jsp:include>
<div class="container">
    <div class="py-5 text-center">
        <form action="/update" method="post" name="updateForm">
            관리번호:<input class="form-control mb-2" type="text" name="id" value="${updateMember.id}" readonly>
            아이디:<input class="form-control mb-2" type="text" name="memberId" value="${updateMember.memberId}"
                       placeholder="아이디" readonly>
            비밀번호:<input class="form-control mb-2" type="text" id="pwConfirm" name="memberPassword"
                        placeholder="비밀번호를 입력하세요">
            이름:<input class="form-control mb-2" type="text" name="memberName" value="${updateMember.memberName}"
                      placeholder="이름" readonly>
            나이:<input class="form-control mb-2" type="text" name="memberAge" value="${updateMember.memberAge}"
                      placeholder="나이" readonly>
            전화번호:<input class="form-control mb-2" type="text" name="memberPhone" value="${updateMember.memberPhone}"
                        placeholder="전화번호">
            <input class="btn btn-primary" type="button" onclick="update()" value="정보수정">
        </form>
        <form action="/deleteA">
            비밀번호:<input class="form-control mb-2" type="password" id="pwConfirm1" name="memberPassword"
                        placeholder="비밀번호를 입력하세요">
            <input class="btn btn-danger" type="button" onclick="deleteA()" value="회원탈퇴">
        </form>
        </div>
    </div>
</div>
</body>
<script>
    const update = () => {
        const pwConfirm = document.getElementById("pwConfirm").value; // 사용자가 입력한 비밀번호 값 가져오기
        const pwDB = '${updateMember.memberPassword}';//DB에서 가져온 비밀번호 가져오기
        if (pwConfirm == pwDB) {
            updateForm.submit(); // 해당 폼을 submit 하는 js 함수
        } else {
            alert("비밀번호가 틀립니다.");
        }
    }
    const deleteA = () => {
        const pwConfirm1 = document.getElementById("pwConfirm1").value;
        const pwDB1 = '${updateMember.memberPassword}';
        const idDB = '${updateMember.id}';
        if (pwConfirm1 == pwDB1) {
            location.href = "/memberPage/deleteA?id=" + idDB;
        } else {
            alert("비밀번호가 틀립니다.")
        }
    }
</script>
</html>
