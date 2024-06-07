<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>농사의 고수</title>
<style>
body {
	font-family: Arial, sans-serif;;
	margin: 0;
	padding: 0;
}

.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 30px;
    background-color: #fff;
    border-bottom: 1px solid #eaeaea;
}

.logo {
    display: flex;
    align-items: center;
    font-size: 60px;
    font-weight: bold;
    background: linear-gradient(to right top, green, yellow);
    color: transparent;
    -webkit-background-clip: text;
}

.logo-image {
    width: 70px; 
    height: 70px;
}
.header .auth {
	font-size: 20px;
	font-weight: bold;
	display: flex;
	gap: 20px;
}

.main {
	padding: 20px;
	text-align: center;
}

.main h1 {
	font-size: 32px;
	margin-bottom: 20px;
}

.main .search-box {
	margin-top: 50px;
	margin-bottom: 50px;
}

.main .search-box input {
	font-size: 17px;
	padding: 15px;
	width: 350px;
	border: 1px solid #eaeaea;
	border-radius: 5px;
}

#search-btn {
	padding: 11px 25px;
	font-size: 17px;
	border-radius: 10%;
}

.services {
	display: flex;
	justify-content: center;
	gap: 70px;
	margin-bottom: 50px;
}


.services .service {
	text-align: center;
	font-size: 20px;
}

.services .service img {
	width: 65px;
	height: 65px;
	background-color: white;
    border: 1px solid rgb(233, 235, 237);
    border-radius: 20px;
    padding: 8px;
    transition: transform 0.3s ease 0s;
}
.services .service img:hover{
	   transform: scale(1.3);
}

.popular-services {
	padding: 40px;
}

.popular-services h2 {
	font-size: 30px;
	margin-bottom: 50px;
}

.popular-services .service-list {
	display: flex;
	gap: 70px;
	justify-content: center;
}

.popular-services .service-item {
	width: 200px;
	font-size: 20px;
}

.popular-services .service-item img {
	width: 200px;
	height: 200px;
	object-fit: cover;
	border: 1px solid #eaeaea;
	border-radius: 10%;
}

a {
	text-decoration-line: none;
	color: black;
}
p{
	color:rgb(64, 74, 92);
}
</style>
</head>
<body>
	<div class="header">
		<div class="logo">농사의 고수
		<img alt="로고이미지" src="img/logo.png" class="logo-image">
		</div>
		
		<div class="auth">
			<a href="Real_Login.jsp">로그인</a> 
			<a href="Real_Join.jsp">회원가입</a>
		</div>
	</div>
	<div class="main">
		<h1>농사의 어려움은 단 한 곳에서 해결하세요</h1>
		<div class="search-box">
			<input type="text" placeholder="어떤 서비스가 필요하세요?">
			<button id="search-btn">검색</button>
		</div>
		<div class="services">
			<a href="#"><div class="service">
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
			<div class="service-list">
				<div class="service-item">
					<a href="#"><img src="img/캘린더2.png" alt="농작물재배알림 캘린더"></a>
					<p>농작물 재배 캘린더</p>

				</div>
				<div class="service-item">
					<a href="#"><img src="img/바구니.png" alt="전라남도 재배작물 정보"></a>
					<p>전남 재배작물 정보</p>

				</div>
				<div class="service-item">
					<a href="#"><img src="img/기관.png" alt="지원기관"></a>
					<p>전남 귀농지원기관</p>

				</div>

			</div>
		</div>
	</div>
</body>
</html>
