<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>농사의 고수</title>
<link rel="stylesheet" href="main.css">
<link rel="apple-touch-icon" href="img/logo.png">
<link rel="shortcut icon" type="image/x-icon" href="img/logo.ico">
</head>
<link rel="apple-touch-icon" href="img/logo.png">
<link rel="shortcut icon" type="image/x-icon" href="img/logo.ico">
<body>
    <div class="header">
        <div class="logo">농사의 고수
        <img alt="로고이미지" src="img/logo.png" class="logo-image">
        </div>
        
        <div class="auth">
            <a href="login.jsp">로그인</a> 
            <a href="join.jsp">회원가입</a>
        </div>
    </div>
    <div class="main">
        <h1>농사의 어려움을 단 한 곳에서 해결하세요</h1>
        <div class="search-box">
            <input type="text" placeholder="어떤 서비스가 필요하세요?">
            <button id="search-btn">검색</button>
        </div>
        <div class="services">
            <a href="board.jsp"><div class="service">
                    <img src="img/새싺.jpg" alt="작물재배">
                    <p>작물재배</p>
                </div></a>
            <div class="service">
                <img src="img/사과2.png" alt="작물수확">
                <p>작물수확</p>
            </div>
            <div class="service">
                <img src="img/벌레.png" alt="병충해">
                <p>병충해</p>
            </div>
            <div class="service">
                <img src="img/aaa.jpg" alt="농기계">
                <p>농기계</p>
            </div>
            <div class="service">
                <img src="img/bb.png" alt="비닐하우스시공">
                <p>비닐하우스시공</p>
            </div>
        </div>

        <div class="popular-services">
            <h2>농고 인기 서비스</h2>
            <a href="#">
            <div class="service-list">
                <div class="service-item">
                    <img src="img/캘린더2.png" alt="농작물재배알림 캘린더">
                    <p>농작물 재배 캘린더</p>
				</div>
				</a>
				<a href="#">
                <div class="service-item">
                    <img src="img/바구니.png" alt="전라남도 재배작물 정보">
                    <p>전남 재배작물 정보</p>

                </div>
                </a>
                 <a href="#">
                <div class="service-item">
                   <img src="img/기관.png" alt="지원기관">
                    <p>전남 귀농지원기관</p>
				</div>
				</a>

            </div>
        </div>
    </div>
</body>
</html>
