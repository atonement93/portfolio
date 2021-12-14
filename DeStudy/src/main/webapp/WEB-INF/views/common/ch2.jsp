<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>개발을 만나는 시간, 디공</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<style>
	* {margin :0; padding: 0;}
	html, body {width: 100%;}
	#wrap {border-top: 1px solid Gainsboro; width: 100%; height: 100%;}
	#contents {width: 70%; height: 100%; margin: 0 auto;}
	h1 {font-size: 4em;}
	h3 {font-size: 3em;}
	#qbox {margin-top: 50px; display: inline-block;}
	#abox {float: right; margin: 220px 50px 0 0;}
	#stick {display: block; margin: 30px 0 0 0;}
	button {display: block; margin: 20px 0 0 0; width: 250px; height: 60px; border-radius: 10px; border: 0; background-color: DarkSeaGreen; text-align: center; font-size: 20px;}
	button:hover{cursor: pointer; color: #ffffff; background-color: #000000;}
/* 	#paging {text-align: center; margin: 200px 0 5% 0;} */
	</style>
	</head>

	<body>
		<%@ include file="header.jsp"%>
		<div id="wrap">
			<section id="contents">
				<section id="qbox">
					<img src="../images/postit (3).png" width="100" height="100">
					<h1>Q2.</h1>
					<h3>난이도를 선택하세요.</h3>
					<section id="stick">
						2/3<progress value="60" max="90"></progress>
					</section>
				</section>
				<section id="abox"></section>
<!-- 				<section id="paging">
					<a href="ch1">이전</a>
				</section> -->
			</section>
			<script type="text/javascript" src="/js/choice.js"></script>
			<script type="text/javascript">
				begin2();
			</script>
		</div>
	</body>
</html>