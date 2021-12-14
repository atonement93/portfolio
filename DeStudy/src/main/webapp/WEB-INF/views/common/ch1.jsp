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
	#abox {float: right; margin: 130px 50px 0 0;}
	#stick {display: inline-block; margin: 30px 0 0 0;}
	button {display: block; margin: 20px 0 0 0; width: 250px; height: 60px; border-radius: 10px; border: 0; background-color: Linen; text-align: center; font-size: 20px;}
	button:hover {cursor: pointer; color: #ffffff; background-color: #000000;}
	</style>
	</head>

	<body>
		<%@ include file="header.jsp"%>
		<div id="wrap">
			<section id="contents">
				<section id="qbox">
					<img src="../images/postit (2).png" width="100" height="100">
					<h1>Q1.</h1>
					<h3>학습할 과목을 선택하세요.</h3>
					<section id="stick">
						1/3<progress value="30" max="90"></progress>
					</section>
				</section>
				<section id="abox"></section>
			</section>
		</div>
		<script type="text/javascript" src="/js/choice.js"></script>
		<script type="text/javascript">
			begin1();
		</script>
	</body>
</html>