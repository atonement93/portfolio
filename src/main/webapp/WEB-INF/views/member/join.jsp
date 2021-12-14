<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>회원가입 - 개발을 만나는 시간, 디공</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="/css/join.css">
	</head>

	<body>
		<div id="wrap">
			<section id="title">
				<h1><img src="/images/logo.png" width="50" height="50"><a href="../common/main">디공</a></h1>
				<h1><span>회원가입</span></h1>
			</section>

			<form name="join" method="post" action="join" autocomplete="off" encType="utf-8">
				<div id="necessary">
					<h3>아이디</h3>
					<input type="text" id="user_id" name="id" placeholder="4자이상" minlength="4" maxlength="15" required autofocus required>
					<button id="overlappedID" type="button">중복확인</button><br>
					<span id="olmessage"></span>
					<h3>비밀번호</h3>
					<input type="password" id="user_pw" name="pw" placeholder="특수문자포함, 10~12자리" minlength="10" maxlength="12" required><br>
					<h3>이메일</h3>
						<input type="text" id="user_email" required><span id="middle">@</span><input type="text" id="email_address" list="user_email_address">
						<datalist id="user_email_address">
							<option value="naver.com"></option>
							<option value="daum.com"></option>
							<option value="google.com"></option>
							<option value="직접입력"></option>
						</datalist>
						<input type="hidden" id="totalemail" name="email" value="">
				</div>
				<div id="unnecessary">
					<h3>사이트를 알게 된 경로(선택)</h3>
					<label><input type="radio" name="cause" value="검색">검색</label><br>
					<label><input type="radio" name="cause" value="블로그">블로그</label><br>
					<label><input type="radio" name="cause" value="지인추천">지인추천</label><br>
					<label><input type="radio" value="기타">기타 : <input type="text" id="cause" name="cause"></label>
				</div>
				<input type="button" id="signup" value="회원가입">
			</form>
			
			<h5>Copyright ⓒ MH All right reserved.</h5>
			<div class="block"></div>
		</div>
		
		<script type="text/javascript" src="/js/join.js"></script>
	</body>
</html>