<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<link rel="stylesheet" href="join.css">
</head>
<body>
	
    <div class="container">
        <h1>농사의 고수에 오신 것을 환영합니다</h1>
        <form action="JoinCon.do">
            <label for="id">아이디</label> 
            <input type="text" id="id" name="id">
            
            <label for="pw">비밀번호</label>
            <input type="password" id="pw" name="pw"> 
            
            <label for="name">이름</label> 
            <input type="text" id="name" name="name">
            
            <label for="phone">전화번호</label> 
            <input type="text" id="phone" name="phone">
            
            <label for="address">주소</label> 
            <input type="text" id="address" name="address">
            
            <label for="nick">닉네임</label> 
            <input type="text" id="nick" name="nick">
            
            <label for="birthdate">생년월일</label> 
            <input type="text" id="birthdate" name="birth">
            
            <label for="gender">성별</label> 
            <select id="gender" name="gender" required>
                <option value="M">남성</option>
                <option value="F">여성</option>
            </select>
            
            <label for="type">회원유형</label> 
            <select id="type" name="type" required>
                <option value="general">일반</option>
                <option value="expert">고수</option>
            </select>
            
            <label for="joined_at">가입일</label> 
            <input type="date" id="joined_at" name="join">
            
            <input type="submit" value="가입하기">
        </form>
    </div>
</body>
</html>