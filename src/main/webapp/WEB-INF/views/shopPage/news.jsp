<%--
  Created by IntelliJ IDEA.
  User: dlwng
  Date: 2022-05-31
  Time: 오전 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tottnham NEWS</title>
    <link rel="icon" type="image/x-icon" href="/resources/img/xicon.png">
    <link rel="stylesheet" href="/resources/css/news.css">
    <style>
    </style>
</head>
<body>
<jsp:include page="../layout/header1.jsp" flush="false"></jsp:include>
<!-- MAIN (Center website) -->
<div class="main">

    <h1>NEWS</h1>
    <hr>

    <h2></h2>
    <p>토트넘 핫스퍼의 놀라운 소식을 접해보세요!</p>

    <!-- Portfolio Gallery Grid -->
    <div class="row">
        <div class="column">
            <div class="content">
                <a href="https://www.joongang.co.kr/article/25073323#home"><img src="/resources/img/conte.webp" alt="Mountains" style="width:100%"></a>
                <h3>FIRST</h3>
                <p>이번 토트넘은 4위를 기록하며 챔피언스리그 진출이 가능하게 되었습니다!
                    또한 안토니오 콘테 감독은 다음시즌을 위한 선수보강을 강력히 요구하고 있습니다!</p>
            </div>
        </div>
        <div class="column">
            <div class="content">
                <a href="https://www.hani.co.kr/arti/sports/soccer/1044647.html"><img src="/resources/img/son.jpg" alt="Lights" style="width:100%"></a>
                <h3>SECOND</h3>
                <p>이번 시즌 손흥민은 패널티 득점 없이 23골 7어시로 아시아 최로 EPL 득점왕에 등극했습니다!</p>
            </div>
        </div>
        <div class="column">
            <div class="content">
                <a href="https://www.donga.com/news/Sports/article/all/20220601/113728218/1"><img src="/resources/img/ivan.png" alt="Nature" style="width:100%"></a>
                <h3>THIRD</h3>
                <p>토트넘 핫스퍼의 새 영입선수는 우승DNA를 지닌 이반 페리시치 입니다! 앞으로의 활약이 기대되는군요!</p>
            </div>
        </div>
        <div class="column">
            <div class="content">
                <a href="https://biz.chosun.com/sports/world-football/2022/06/08/AV6ZLGKS3WT4QZLRYUCVWOJF3A/"><img src="/resources/img/poster.jpg" alt="Mountains" style="width:100%"></a>
                <h3>FOURTH</h3>
                <p>토트넘 핫스퍼는 요리스의 백업 골키퍼로 2M 의 신장과 좋은 반사신경을 가진 프레이저 포스터를 FA로 영입했습니다.</p>
            </div>
        </div>
    </div>

    <div class="content">
        <a href="https://www.donga.com/news/Sports/article/all/20220526/113624061/1"><img src="/resources/img/Home.jpg" alt="Bear" style="width:100%"></a>
        <h3>BIG NEWS</h3>
        <p>22/23시즌의 선수 보강을 위해 조 루이스 구단주가 토트넘에 영입자금지원을 약속했습니다.
            약 2400억 가량인데 오는 22/23시즌 챔피언스 리그 진출에 성공하고 또 안토니오 콘테와 기존선수들
            그리고 새로운 영입선수들의 활약을 토트넘 펜들은 기대하고 있습니다!</p>
    </div>

    <!-- END MAIN -->
</div>
</body>
</html>
