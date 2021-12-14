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
					<h1>Javascript 중상급<h1>
					<h3>온라인 강의</h3>
				</article>
			</div>
			<div>
				<ul id="list">
					<li>
						<section>
							<a href="https://codingapple.com/course/javascript-es6/" target="_blank">
								<img src="../images/codingapple.jpg" class="imglogo square" alt="로고사진">
							</a>
							<article>
								<h4>코딩애플 - JavaScript 객체지향&ES6 신문법</h4>
								<p>JavaScript ES6 추가 문법과 객체지향을 배울 수 있는 자바스크립트 심화과정입니다. (기초강의 아님 주의)<br><br>
								강의내용 : this 키워드, Arrow function, var let const 변수와 전역객체 window, Destructuring으로 변수만들기 등</p>
								<a href="https://codingapple.com/course/javascript-es6/" target="_blank">more ></a>
							</article>
						</section>
					</li>
					<li>
						<section>
							<article>
								<h4>코드잇 - JavaScript 중급</h4>
								<p>자바스크립트로 웹 페이지는 어떻게 다루는지, 성장의 핵심역할을 한 ES6+는 도대체 무엇인지, 대부분의 문법을 구성하는 '객체'는 어떻게 활용하면 좋을지, 자바스크립트의 무궁무진한 가능성을 이번 코스를 통해 확인해 보세요!<br><br>
								강의내용 : 인터랙티브 자바스크립트, 모던 자바스크립트, 자바스크립트 객체 지향 기본기, 자바스크립트 웹 개발 기본기</p>
								<a href="https://www.codeit.kr/courses/javascript-intermediate" target="_blank">more ></a>
							</article>
							<a href="https://www.codeit.kr/courses/javascript-intermediate" target="_blank">
								<img src="../images/codeit.png" class="imglogo" alt="로고사진">
							</a>
						</section>
					</li>
					<li>
						<section>
							<a href="https://www.inflearn.com/course/%EC%8B%A4%EC%A0%84-%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8#curriculum" target="_blank">
								<img src="../images/inflearn.png" class="imglogo square" alt="로고사진">
							</a>
							<article>
								<h4>인프런 - 실전 자바스크립트</h4>
								<p>자바스크립트에 대한 깊이 있는 이해를 원하시는 분에게 적합한 강의입니다. 2020년 기준 자바스크립트 최신 문법을 다룹니다.<br><br>
								강의내용 : var, const, let,  변수 스코프, 호이스팅, 부동소수점, Safe Integer, template literals, 문자열 메서드 등</p>
								<a href="https://www.inflearn.com/course/%EC%8B%A4%EC%A0%84-%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8#curriculum" target="_blank">more ></a>
							</article>
						</section>
					</li>
				</ul>
			</div>
		</div>
		<%@ include file="../common/footer.jsp"%>
	</body>
</html>