<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>공지사항 - 개발을 만나는 시간, 디공</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="/css/select.css">
	</head>
	
	<body>
		<%@ include file="../common/header.jsp"%>
		<div id="wrap">
			<section id="main">
				<section id="maintitle">공지사항</section>
					<article id="title">${noticeVO.title}</article>
					<article id="date">${noticeVO.date}</article>
					<article id="contents">${noticeVO.contents}</article>
					<c:forEach items="${noticeVO.fileList}" var="fileVO">
						<a href="../upload/notice/${fileVO.fileName}">${fileVO.oriName}</a><br>
					</c:forEach>
					<br>
					<a href="./list">돌아가기</a>
					<div id="writing">
						<a href="./update?num=${noticeVO.num}">수정</a>
						<a href="./delete?num=${noticeVO.num}">삭제</a>
					</div>
					<%-- <!-- 댓글 -->
					<section id="comment">
						댓글<br>
						<form>
							<input type="text" id="commentcontents">
							<input type="image" class="cbtn" src="../images/write.png" alt="등록" width="40" height="40">
						</form>
						<ol class="commentList">
							<c:forEach items="${commentList}" var="commentList">
								<li>
									<p>
									${commentList.writer}<br>
									${commentList.date}
									</p>
									<p>${commentList.contents}</p>
								</li>
							</c:forEach>
						</ol>
					</section> --%>
					<div class="block"></div>
			</section>
		</div>
		<%@ include file="../common/footer.jsp"%>
	</body>
</html>