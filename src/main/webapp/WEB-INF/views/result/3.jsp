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
					<h1>HTML/CSS 초급<h1>
					<h3>온라인 강의</h3>
				</article>
			</div>
			<div>
				<ul id="list">
					<li>
						<section>
							<a href="https://opentutorials.org/course/3084" target="_blank">
								<img src="../images/생활코딩.png" class="imglogo square" alt="로고사진">
							</a>
							<article>
								<h4>생활코딩 - WEB1, WEB2</h4>
								<p>생활코딩 주력 수업인 WEBn은 프로그래밍이 처음인 분들을 위해서 고안된 수업입니다. WEBn을 통해서 교양으로 코딩을 공부하려는 분들에게는 출구를, 직업으로 코딩을 공부하려는 분들에게는 입구를 제공해드리려고 노력하고 있습니다.<br><br>
								강의내용 : WEB1 - HTML & Internet, WEB2 - CSS</p>
								<a href="https://opentutorials.org/course/3084" target="_blank">more ></a>
							</article>
						</section>
					</li>
					<li>
						<section>
							<article>
								<h4>부스트코스 - 비전공자를 위한 HTML/CSS</h4>
								<p>HTML과 CSS기초 문법을 학습하고 다양한 HTML 태그와 CSS속성의 사용법을 익힐 수 있습니다. 프로그래밍을 처음 배우는 분도 쉽게 접할 수 있습니다.<br><br>
								강의내용 : HTML 이해하기, HTML 태그, 콘텐츠모델, 시멘틱마크업, 블록&인라인, CSS 이해하기, 단위, 배경, 박스모델 등</p>
								<a href="https://www.boostcourse.org/cs120" target="_blank">more ></a>
							</article>
							<a href="https://www.boostcourse.org/cs120" target="_blank">
								<img src="../images/boost.png" class="imglogo" alt="로고사진">
							</a>
						</section>
					</li>
					<li>
						<section>
							<a href="https://nomadcoders.co/kokoa-clone" target="_blank">
								<img src="../images/nomad.jpg" class="imglogo" alt="로고사진">
							</a>
							<article>
								<h4>노마드코더 - 코코아톡 클론 코딩</h4>
								<p>코코아톡의 외부 모습을 따라 만들어봅니다. 기본적인 HTML, CSS를 활용하여 이쁘장한 프로필, 채팅창을 만들어봅니다.<br><br>
								강의내용 : IDs & Classes, HTML Tags, Semantic & non-semantic tags, Box Model, Inline, Block, inline-block, CSS Position, Flexbox 등</p>
								<a href="https://nomadcoders.co/kokoa-clone" target="_blank">more ></a>
							</article>
						</section>
					</li>
				</ul>
			</div>
		</div>
		<%@ include file="../common/footer.jsp"%>
	</body>
</html>