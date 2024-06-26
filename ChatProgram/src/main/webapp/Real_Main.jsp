<%@page import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@page import="com.smhrd.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body>
<%
		//로그인 여부 확인해서 로그아웃 회원정보수정 탭 띄우기
		MemberDTO user_info = (MemberDTO)session.getAttribute("user_info");
		System.out.print(user_info);
%>
	<div class="header">
		<div class="logo">농사의 고수
		<img alt="로고이미지" src="img/logo.png" class="logo-image">
	</div>
	<nav>
		<% if(user_info != null){%>
					<!--개인정보수정 기능-->
					<a href="./UpdateMember.jsp">개인정보수정</a>
					<!-- 업데이트멤버.jsp으로 이동하고 정보수정버튼 누르면 db에있는 정보 가 수정됨 -->
					<!-- 로그아웃 기능  -->
					<a href="logoutCon.do">로그아웃</a>
		
		<%}else{ %>
				<a href="#login">
				<div class="auth">
			<a href="Real_Login.jsp">로그인</a> 
			<a href="Real_Join.jsp">회원가입</a>
		</div></a>
		<%} %>
	</nav>
	<nav id=login>
		
	</nav>
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
			<a href="#">
				<div class="service-item">
					<img src="img/캘린더2.png" alt="농작물재배알림 캘린더">
					<p>농작물 재배 캘린더</p>

				</div></a>
				<a href="#">
				<div class="service-item">
					<img src="img/바구니.png" alt="전라남도 재배작물 정보">
					<p>전남 재배작물 정보</p>

				</div></a>
				<a href="#">
				<div class="service-item">
					<img src="img/기관.png" alt="지원기관">
					<p>전남 귀농지원기관</p>

				</div></a>

			</div>
		</div>
	</div>
</body>
</html>
