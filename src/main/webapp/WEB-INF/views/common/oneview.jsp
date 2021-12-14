<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>한눈에보기 - 개발을 만나는 시간, 디공</title>
	<link rel="stylesheet" href="/css/oneview.css">
	</head>

	<body>
		<%@ include file="../common/header.jsp"%>
		<div id="wrap">
			<div id="ribbon">
				<article id="rtitle">한눈에보기</article>
			</div>
			<section id="ovtitle">
				<h4><span>학습 과목</span></h4>
			</section>
			<div class="menuwrap">
				<ul class="menulist">
					<li><a href="#0"><button>컴퓨터공학 기초</button></a></li>
					<li><a href="#1"><button>HTML/CSS</button></a></li>
					<li><a href="#2"><button>Javascript</button></a></li>
					<li><a href="#3"><button>Java</button></a></li>
					<li><button class="ready">준비중</button></li>
					<li><button class="ready">준비중</button></li>
				</ul>
			</div>
			<section class="wrap">
				<div id="0" class="title">
					<h5>컴퓨터공학 기초 <span>기본서</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=141042179" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/컴퓨터과학.jpg" alt="책사진" width="250" height="290">
								<br><h6>한 권으로 그리는 컴퓨터과학 로드맵</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=83064510" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/기초튼튼.png" alt="책사진" width="250" height="290">
								<br><h6>다 함께 프로그래밍</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=268444562" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/한권으로읽는컴퓨터.jpg" alt="책사진" width="250" height="290">
								<br><h6>한 권으로 읽는 컴퓨터 구조와 프로그래밍</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
			<section class="wrap">
				<div class="title">
					<h5>컴퓨터공학 기초 <span>온라인 강의</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.boostcourse.org/cs112" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/boost.png" alt="로고" width="200" height="150">
								<br><br><h6>부스트코스<br>모두를 위한 컴퓨터 과학</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.codeit.kr/courses/intro-to-computer" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/codeit.png" alt="로고" width="200" height="150">
								<br><br><h6>코드잇<br>컴퓨터 개론</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://fastcampus.co.kr/dev_online_computer?utm_source=mobion&utm_medium=icover_f&utm_campaign=pc&utm_content=200728_pc_re" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/fast.png" alt="로고" width="200" height="150">
								<br><br><h6>패스트캠퍼스<br>한 번에 끝내는 컴퓨터 공학</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
			<section class="wrap">
				<div id="1" class="title">
					<h5>HTML/CSS 초급 <span>기본서</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=222674489" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/htmlcss웹표준.jpg" alt="책사진" width="250" height="290">
								<br><h6>Do it! HTML5 + CSS3 웹 표준의 정석</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=256436991" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/hc입문예제중심.png" alt="책사진" width="250" height="290">
								<br><h6>HTML/CSS 입문 예제 중심</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=221767384" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/hc러닝스쿨.png" alt="책사진" width="250" height="290">
								<br><h6>러닝스쿨! 한 권으로 끝내는 HTML + CSS 웹 디자인 입문</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
			<section class="wrap">
				<div class="title">
					<h5>HTML/CSS 초급 <span>온라인 강의</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://opentutorials.org/course/3084" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/생활코딩.png" alt="로고" width="200" height="150">
								<br><br><h6>생활코딩<br>WEB1, WEB2</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.boostcourse.org/cs120" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/boost.png" alt="로고" width="200" height="150">
								<br><br><h6>부스트코스<br>비전공자를 위한 HTML/CSS</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://nomadcoders.co/kokoa-clone" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/nomad.jpg" alt="로고" width="200" height="150">
								<br><br><h6>노마드코더<br>코코아톡 클론 코딩</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
			<section class="wrap">
				<div class="title">
					<h5>HTML/CSS 중상급 <span>기본서</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=115704367" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/최신표준hc.png" alt="책사진" width="250" height="290">
								<br><h6>최신 표준 HTML+CSS 디자인</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=11520547" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/올인원.jpg" alt="책사진" width="250" height="290">
								<br><h6>올인원 웹 실무 가이드 HTML 5 & CSS 3</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
			<section class="wrap">
				<div class="title">
					<h5>HTML/CSS 중상급 <span>온라인 강의</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://nomadcoders.co/css-layout-masterclass" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/nomad.jpg" alt="로고" width="200" height="150">
								<br><br><h6>노마드코더<br>CSS Layout 마스터 클래스</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.boostcourse.org/web344" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/boost.png" alt="로고" width="200" height="150">
								<br><br><h6>부스트코스<br>웹 UI 개발</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
			<section class="wrap">
				<div id="2" class="title">
					<h5>Javascript 초급 <span>기본서</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=282436523" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/doitjs.jpg" alt="책사진" width="250" height="290">
								<br><h6>Do it! 자바스크립트 입문</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=138287372" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/모던자바입문.png" alt="책사진" width="250" height="290">
								<br><h6>모던 자바스크립트 입문</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
			<section class="wrap">
				<div class="title">
					<h5>Javascript 초급 <span>온라인 강의</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://opentutorials.org/course/3085" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/생활코딩.png" alt="로고" width="200" height="150">
								<br><br><h6>생활코딩<br>WEB2 - JavaScript</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://nomadcoders.co/javascript-for-beginners" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/nomad.jpg" alt="로고" width="200" height="150">
								<br><br><h6>노마드코더<br>바닐라 JS로 크롬 앱 만들기</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.codeit.kr/courses/intro-to-programming-in-javascript" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/codeit.png" alt="로고" width="200" height="150">
								<br><br><h6>코드잇<br>프로그래밍 기초 in JavaScript</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
			<section class="wrap">
				<div class="title">
					<h5>Javascript 중상급 <span>기본서</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=251552545" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/모던자바deepdive.png" alt="책사진" width="250" height="290">
								<br><h6>모던 자바스크립트 Deep Dive</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=34486660" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/인사이드자바.png" alt="책사진" width="250" height="290">
								<br><h6>인사이드 자바스크립트</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=206513031" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/코어자바.png" alt="책사진" width="250" height="290">
								<br><h6>코어 자바스크립트</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
			<section class="wrap">
				<div class="title">
					<h5>Javascript 중상급 <span>온라인 강의</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://codingapple.com/course/javascript-es6/" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/codingapple.jpg" alt="로고" width="200" height="150">
								<br><br><h6>코딩애플<br>JavaScript 객체지향&ES6 신문법</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.codeit.kr/courses/javascript-intermediate" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/codeit.png" alt="로고" width="200" height="150">
								<br><br><h6>코드잇<br>JavaScript 중급</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.inflearn.com/course/%EC%8B%A4%EC%A0%84-%EC%9E%90%EB%B0%94%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8#curriculum" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/inflearn.png" alt="로고" width="200" height="150">
								<br><br><h6>인프런<br>실전 자바스크립트</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
			<section class="wrap">
				<div id="3" class="title">
					<h5>Java 초급 <span>기본서</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=76083001" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/자바정석.jpg" alt="책사진" width="250" height="290">
								<br><h6>Java의 정석</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=50563128&start=slayer" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/이것이자바.png" alt="책사진" width="250" height="290">
								<br><h6>이것이 자바다</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=278341980" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/자바정복.png" alt="책사진" width="250" height="290">
								<br><h6>Do it! 자바 완전 정복</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
			<section class="wrap">
				<div class="title">
					<h5>Java 초급 <span>온라인 강의</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://youtu.be/MD3YGrofnDY" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/gcamp.jpg" alt="로고" width="200" height="150">
								<br><br><h6>SEOUL-G 캠프<br>자바-JSP-Spring 강좌</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.inflearn.com/course/%EC%9E%90%EB%B0%94-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%B0%8D-%EC%9E%85%EB%AC%B8#curriculum" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/inflearn.png" alt="로고" width="200" height="150">
								<br><br><h6>인프런<br>Do it! 자바 프로그래밍 입문</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
			<section class="wrap">
				<div class="title">
					<h5>Java 중상급 <span>기본서</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=251222649" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/모던자바.jpg" alt="책사진" width="250" height="290">
								<br><h6>Practical 모던 자바</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=171196410" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/이펙티브.png" alt="책사진" width="250" height="290">
								<br><h6>이펙티브 자바</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
			<section class="wrap">
				<div class="title">
					<h5>Java 중상급 <span>온라인 강의</span></h5>
				</div>
				<ul>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://youtu.be/tvciu9_jHjQ" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/newlec.png" alt="로고" width="200" height="150">
								<br><br><h6>뉴렉처<br>자바 프로그래밍</h6>
							</article>
						</button>
					</li>
					<li>
						<button class="button">
							<div class="more hidden">
								<a href="https://www.inflearn.com/course/%EC%9E%90%EB%B0%94-%ED%81%B4%EB%9E%98%EC%8A%A4-%EA%B0%9D%EC%B2%B4%EC%A7%80%ED%96%A5-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%B0%8D#curriculum" target="_blank"><h5>더 알아보기</h5></a>
							</div>
							<article class="contents">
								<img src="../images/inflearn.png" alt="로고" width="200" height="150">
								<br><br><h6>인프런<br>자바 : 클래스의 이해와 객체지향 프로그래밍</h6>
							</article>
						</button>
					</li>
				</ul>
			</section>
		</div>
		<%@ include file="../common/footer.jsp"%>
		<script type="text/javascript" src="/js/oneview.js"></script>
	</body>
</html>