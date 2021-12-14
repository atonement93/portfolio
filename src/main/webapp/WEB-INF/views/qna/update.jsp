<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>의견 - 개발을 만나는 시간, 디공</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="/css/summernote/summernote-lite.css">
	<link rel="stylesheet" href="/css/update.css">
	<script src="/js/summernote/summernote-lite.js"></script>
	<script src="/js/summernote/lang/summernote-ko-KR.js"></script>
	<script src="/js/update.js"></script>
	<c:import url="../temp/bootStrapCDN.jsp"></c:import>
	</head>

	<body>
		<%@ include file="../common/header.jsp"%>
		<div id="wrap">
			<div id="main">
				<div class="block"></div>
				<form action="update" method="post">
					<input type="hidden" name="num" value="${qnaVO.num}">
					<input type="text" id="title" name="title" value="${qnaVO.title}"><br>
					<%-- <input type="text" name="writer" readonly="readonly" value="${qnaVO.writer}"><br> --%>
					<textarea id="summernote" name="contents">${qnaVO.contents}</textarea>
					<button type="submit" id="submit" class="btn btn-primary btn-lg">수정하기</button>
				</form>
				<div class="block"></div>
			</div>
		</div>
		<%@ include file="../common/footer.jsp"%>
	</body>
</html>