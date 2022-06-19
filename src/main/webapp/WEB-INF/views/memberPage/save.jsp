<%--
  Created by IntelliJ IDEA.
  User: dlwng
  Date: 2022-05-27
  Time: 오전 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lnag="ko">
<head>
    <meta charset="UTF-8">
    <title>title</title>
    <link rel="icon" type="image/x-icon" href="/resources/img/xicon.png">
    <link rel="stylesheet" href="/resources/css/save.css">
    <script src="/resources/js/jquery.js"></script>
</head>
<body>
<!-- header -->
<div id="header">
    <a href="/" target="_blank" title="signing"><img src="/resources/img/tottnhamIcon.jpg" id="logo"></a>
</div>

<!-- wrapper -->
<div id="wrapper">
    <form action="/memberPage/save" method="post" enctype="multipart/form-data">
        <!-- content-->
        <div id="content">

            <!-- ID -->
            <div>
                <h3 class="join_title">
                    <label for="memberId">아이디</label>
                </h3>
                <span class="box int_id">
                        <input type="text" name="memberId" id="memberId" class="int" maxlength="20" onblur="checkId()">
                        <img src="/resources/img/check1.png" id="checkID_img" class="pswdImg">
                    </span>
                <span id=idError></span>
            </div>
            <!-- PW1 -->
            <div>
                <h3 class="join_title"><label for="memberPassword">비밀번호</label></h3>
                <span class="box int_pass">
                        <input type="password" name="memberPassword" id="memberPassword" class="int" maxlength="20"
                               onblur="checkPw()">
                        <img src="/resources/img/lock_icon.jpg" id="pswd1_img1" class="pswdImg">
                    </span>
                <span id="pwError"></span>
            </div>

            <!-- PW2 -->
            <div>
                <h3 class="join_title"><label for="memberPassword1">비밀번호 재확인</label></h3>
                <span class="box int_pass_check">
                        <input type="password" id="memberPassword1" class="int" maxlength="20" onblur="checkRePw()">
                        <img src="/resources/img/lock_icon.jpg" id="pswd2_img1" class="pswdImg">
                    </span>
                <span id="RpwError"></span>
            </div>
            <!-- NAME -->
            <div>
                <h3 class="join_title"><label for="memberName">이름</label></h3>
                <span class="box int_name">
                        <input type="text" name="memberName" id="memberName" class="int" maxlength="20"
                               onblur="checkName()">
                        <img src="/resources/img/check1.png" id="checkN_img" class="pswdImg">
                    </span>
                <span id="NError"></span>
            </div>
            <!-- BIRTH -->
            <div>
                <h3 class="join_title">
                    <label for="memberAge">나이</label>
                </h3>
                <span class="box int_id">
                        <input type="text" name="memberAge" id="memberAge" class="int" maxlength="20"
                               onblur="checkAge()">
                        <img src="/resources/img/check1.png" id="checkAge_img" class="pswdImg">
                    </span>
                <span id=AgeError></span>
            </div>
            <!-- EMAIL -->
            <div>
                <h3 class="join_title"><label for="memberEmail">본인확인 이메일<span
                        class="optional">(선택)</span></label></h3>
                <span class="box int_email">
                        <input type="text" name="memberEmail" id="memberEmail" class="int" maxlength="100"
                               placeholder="선택입력">
                    </span>
            </div>

            <!-- MOBILE -->
            <div>
                <h3 class="join_title"><label for="memberPhone">휴대전화</label></h3>
                <span class="box int_mobile">
                        <input type="text" name="memberPhone" id="memberPhone" class="int" maxlength="16"
                               placeholder="전화번호 입력"
                               onblur="checkPhone()">
                        <img src="/resources/img/check1.png" id="checkP_img" class="pswdImg">
                    </span>
                <span id="PError"></span>
            </div>

            <div>
                <h3 class="join_title"><label for="memberProFile">프로필</label></h3>
                <span class="box int_mobile">
            <input type="file" name="memberProFile" id="memberProFile" name="memberProFile">
            </span>
            </div>
            <!-- JOIN BTN-->
            <div class="btn_area">
                <input id="btnJoin" type="submit" value="가입하기">
            </div>
        </div>
        <!-- content-->
    </form>
</div>
<!-- wrapper -->
<script>
    function checkId() {
        const id1 = document.getElementById("memberId").value;
        const checkResult = document.getElementById("idError")
        const exp = /^(?=.*[a-z])(?=.*\d)[a-z\d]{5,15}$/;
        $.ajax({
            type: "post", // http request method
            url: "duplicate-check", // 요청주소(컨트롤러 주소값)
            data: {"memberId": id1}, //전송하는 파라미터
            dataType: "text", // 리턴받을 데이터 형식
            success: function (result) {
                if (result == "ok") {
                    if (id1.match(exp)) {
                        checkID_img.src = "/resources/img/check2.png";
                        checkResult.style.color = "green";
                        checkResult.innerHTML = "사용가능합니다";
                    } else if (id1 === "") {
                        checkID_img.src = "/resources/img/check3.png";
                        checkResult.style.color = "red";
                        checkResult.innerHTML = "필수입니다.";
                    } else {
                        checkID_img.src = "/resources/img/check3.png";
                    }
                } else {
                    checkResult.style.color = "red";
                    checkResult.innerHTML = "사용불가합니다";
                    checkID_img.src = "/resources/img/check3.png";
                }
            },
            error: function () {
                alert("오타체크")
            }
        })
    }

    function checkPw() {
        const id2 = document.getElementById("memberPassword").value;
        const checkPw = document.getElementById("pwError")
        const exp = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[-_!#$@])[A-Za-z\d-_!#$@]{5,15}$/;
        if (id2 === "") {
            checkPw.innerHTML = "필수입니다"
            checkPw.style.color = "red"
        }else if (id2.match(exp)) {
            checkPw.innerHTML = "비밀번호 양식에 맞습니다"
            checkPw.style.color = "green"
        } else {
            checkPw.innerHTML = "비밀번호 양식에 맞지 않습니다"
            checkPw.style.color = "red"
        }
    }

    function checkRePw() {
        const id3 = document.getElementById("memberPassword").value;
        const id4 = document.getElementById("memberPassword1").value;
        const checkRPw = document.getElementById("RpwError")
        const exp = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[-_!#$@])[A-Za-z\d-_!#$@]{5,15}$/;
        if(id4 === ""){
            checkRPw.innerHTML = "필수입니다"
            checkRPw.style.color = "red"
        } else if (id4.match(exp)) {
            if (id3 === id4) {
                pswd1_img1.src = "/resources/img/lock_able_icon.jpg";
                checkRPw.innerHTML = "비밀번호가 같습니다"
                checkRPw.style.color = "green"
            } else {
                pswd1_img1.src = "/resources/img/lock_disable_icon.jpg";
                checkRPw.innerHTML = "비밀번호가 다릅니다"
                checkRPw.style.color = "red"
            }
        }
    }

    function checkName() {
        const id5 = document.getElementById("memberName").value;
        const checkN = document.getElementById("NError")
        const exp = /^[가-힣]{1,25}$/;
        if (id5 === "") {
            checkN.innerHTML = "필수정보입니다."
            checkN.style.color = "red"
            checkN_img.src = "/resources/img/check3.png";
        }
        else if (id5.match(exp)) {
            checkN_img.src = "/resources/img/check2.png";
        } else {
            checkN_img.src = "/resources/img/check3.png";
        }
    }

    function checkAge() {
        const id6 = document.getElementById("memberAge").value;
        const checkA = document.getElementById("AgeError")
        const exp = /^\d{1,3}$/;
        if (id6 === "") {
            checkA.innerHTML = "필수정보입니다"
            checkA.style.color = "red"
            checkN_img.src = "/resources/img/check3.png";
        } else if (id6.match(exp)) {
            if (id6 >= 19) {
                checkAge_img.src = "/resources/img/check2.png";
            } else {
                checkAge_img.src = "/resources/img/check2.png";
                checkA.innerHTML = "컨텐츠 이용의 제약이 있을 수 있습니다."
                checkA.style.color = "blue"
            }
        }
    }

    function checkPhone() {
        const id7 = document.getElementById("memberPhone").value;
        const exp = /^\d{11}$/;
        if (id7.value === "") {
            checkP_img.src = "/resources/img/check3.png";
        } else if (id7.match(exp)) {
            checkP_img.src = "/resources/img/check2.png";
        } else {
            checkP_img.src = "/resources/img/check3.png";
        }
    }
</script>
</body>
</html>