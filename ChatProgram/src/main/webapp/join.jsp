<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<link rel="stylesheet" href="join.css">
</head>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<body>
   
    <div class="container">
        <h1>농사의 고수에 오신 것을 환영합니다</h1>
        <form action="main.html">
            <label for="id">아이디</label> 
            <input type="text" id="id" name="id">
            <input type="button" class="btn1" value="중복 확인" onclick="return idCheck()" />
            
            <label for="pw">비밀번호</label>
            <input type="password" id="pw" name="pw"> 
            
            <label for="name">이름</label> 
            <input type="text" id="name" name="name">
            
            <label for="phone">전화번호</label> 
            <input type="text" id="phone" name="phone">

            <label for="email">이메일</label>
            <div id="emailinput">
            <input class="text2" id="domain1-txt" type="text" name="email" />@<input class="text1" id="domain-txt" type="text" name="email"/><select class="box" id="domain-list" >
                <option value="type">직접 입력</option>
                <option>naver.com</option>
                <option>gmail.com</option>
                <option>daum.net</option>
                <option>nate.com</option>
                </select></div>
            <script>
            const domainListEl = document.querySelector('#domain-list')
            const domainInputEl = document.querySelector('#domain-txt')
            domainListEl.addEventListener('change', (event) => {
            if(event.target.value !== "type") {
            domainInputEl.value = event.target.value
            domainInputEl.disabled = true
            } else { 
            domainInputEl.value = "" 
            domainInputEl.disabled = false
            }
             })
            </script>
            
            <label for="address">주소</label> 
            <input type="text" name="mem_addr" class="text" id="sample6_postcode" placeholder="우편번호">
            <input type="button" class="btn2" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
            <input type="text" name="mem_addr" class="text" id="sample6_address" placeholder="주소"><br>
            <input type="text" name="mem_addr" class="text" id="sample6_detailAddress" placeholder="상세주소">
            <input type="text" name="mem_addr" class="text" id="sample6_extraAddress" placeholder="참고항목">
            
            <label for="nick">닉네임</label> 
            <input type="text" id="nick" name="nick">
            
            <label for="birthdate">생년월일</label> 
            <input type="date" id="birthdate" name="birth">
            
            <label for="gender">성별</label> 
            <select id="gender" name="gender" required>
                <option value="male">남성</option>
                <option value="female">여성</option>
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
