<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>개발을 만나는 시간, 디공</title>
	<link rel="stylesheet" href="/css/results.css">
	</head>
	
	<body>
		<%@ include file="../common/header.jsp"%>
		<div id="wrap">
			<div id="titlebox">
				<article id="title">
					<h1>HTML/CSS 중상급<h1>
					<h3>온라인 강의</h3>
				</article>
			</div>
			<div>
				<ul id="list">
					<li>
						<section>
							<a href="https://nomadcoders.co/css-layout-masterclass" target="_blank">
								<img src="../images/nomad.jpg" class="imglogo" alt="로고사진">
							</a>
							<article>
								<h4>노마드코더 - CSS Layout 마스터 클래스</h4>
								<p>영국, 프랑스, 덴마크, 독일 등의 화려하고 아름다운 웹사이트 11개 레이아웃(영화 웹, 쇼핑몰, 포트폴리오 등)을 따라 만들어봅니다. 이를 통해 최신 CSS 기법을 배우게 될 거에요.<br><br>
								강의내용 : 11개 CSS 레이아웃</p>
								<a href="https://nomadcoders.co/css-layout-masterclass" target="_blank">more ></a>
							</article>
						</section>
					</li>
					<li>
						<section>
							<article>
								<h4>부스트코스 -웹 UI 개발</h4>
								<p>네이버 계열사 N Tech Service의 개발자들과 함께 개발한 강의입니다. HTML, CSS, 웹 접근성의 단계별 교육으로 실무에서 사용하는 다양한 UI 개발을 이해하고 제작할 수 있습니다.<br><br>
								강의내용 : HTML&CSS 기초, 웹 접근성, 배열, 참고학습</p>
								<a href="https://www.boostcourse.org/web344" target="_blank">more ></a>
							</article>
							<a href="https://www.boostcourse.org/web344" target="_blank">
								<img src="../images/boost.png" class="imglogo" alt="로고사진">
							</a>
						</section>
					</li>
					<li>
						<p class="prepare">준비중</p>
					</li>
				</ul>
			</div>
		</div>
		<%@ include file="../common/footer.jsp"%>
	</body>
</html>