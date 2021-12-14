<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>header</title>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
		* {margin :0; padding: 0; font-family: 'Noto Sans KR', 돋움;}
		a {text-decoration:none; color:black;}
		#nav {margin: 20px 0; width: 100%; display: block;}
		#inner-nav{margin: 20px auto; width: 70%; height: 24px;}
		#logo {float: left; display: inline-block;}
		#menu > li {list-style-type: none; display: inline-block; margin: 0 20px; float: right;}
	</style>
	</head>

	<body>
		<div id="nav">
			<div id="inner-nav">
				<div id="logo">
					<a href="../common/main"><img src="../images/logo.png" width="20" height="20">디공</a>
				</div>
				<ul id="menu">
					<c:choose>
						<c:when test="${not empty member}">
							<li><a href="../member/logout">로그아웃</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="../member/login">로그인</a></li>
						</c:otherwise>
					</c:choose>
						<li><a href="../qna/list">의견</a></li>
						<li><a href="../notice/list">공지사항</a></li>
						<li><a href="../common/oneview">한눈에보기</a></li>
				</ul>
				
			</div>
		</div>
	</body>
</html>