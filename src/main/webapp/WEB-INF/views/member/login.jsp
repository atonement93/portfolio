<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>로그인 - 개발을 만나는 시간, 디공</title>
	<style>
		html, body{width: 100%; height: 100%;}
		a {text-decoration:none;}
		h4 {font-size: 20px;}
		#loginwrap {border-top: 1px solid Gainsboro; width: 100%; text-align: center;}
		#intro {width: 60%; margin: 0 auto; box-sizing: border-box; padding: 70px 0 20px 0;}
		#title {margin: 10px 0;}
		#login {width: 25%; margin: 0 auto; padding: 0 0 100px 0;}
		#user_id {text-align: left;}
		#user_pw {text-align: left;}
		#errorme {color: red; font-size: 11px; font-style: Italic;}
		#loginimg {margin: 20px 0; display: inline-block;}
		.block {width: 40%; height: 70px;}
		.cblock {width: 40%; height: 10px;}
		#signup {color: blue;}
	</style>
	</head>

	<body>
		<%@ include file="../common/header.jsp"%>
		<div id="loginwrap">
			<section id="intro">
				<figure>
					<img src="../images/logo.png" width="250" height="250">
					<!-- <figcaption>개발을 만나는 시간, 디공</figcaption> -->
				</figure>
				<article id="title"><h4>개발을 만나는 시간, 디공</h4></article>
			</section>
		
			<section id="login">
						<fieldset>
								<legend>로그인</legend>
									<form name="login" method="post" action="login" autocomplete="off" encType="utf-8">
										<div class="block"></div>
										아이디 : <input type="text" id="user_id" name="id" required autofocus required><br>
										<div class="cblock"></div>
										비밀번호 : <input type="password" id="user_pw" name="pw" required><br>
										<%-- <c:choose>
											<c:when test="${empty member}">
											<div class="cblock"></div>
												<h4 id="errorme">입력한 아이디 혹은 비밀번호가 일치하지 않습니다.</h4>
											</c:when>
											<c:otherwise>
											</c:otherwise>
										</c:choose> --%>
										<input type="image" id="loginimg" src="../images/login.png" alt="로그인" width="100" height="90">
									</form>
								<a href="./join" id="signup">회원가입</a>
								<div class="cblock"></div>
						</fieldset>
			</section>
		</div>
		<%@ include file="../common/footer.jsp"%>
	</body>
</html>