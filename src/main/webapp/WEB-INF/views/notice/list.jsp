<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>공지사항 - 개발을 만나는 시간, 디공</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<c:import url="../temp/bootStrapCDN.jsp"></c:import>
	<link rel="stylesheet" href="/css/list.css">
	</head>

	<body>
		<%@ include file="../common/header.jsp"%>
		<div id="wrap">
			<section id="main">
				<section id="maintitle">공지사항</section>
					<table class="table">
					  <thead>
					    <tr id="sector">
					      <th scope="col">번호</th>
					      <th scope="col">제목</th>
					      <th scope="col">작성자</th>
					      <th scope="col">조회수</th>
					      <th scope="col">작성일</th>
					    </tr>
					  </thead>
					  <tbody>
					  	<c:forEach items="${noticeList}" var="noticeVO">
						    <tr>
						      <th scope="row">${noticeVO.num}</th>
						      <td><a href="./select?num=${noticeVO.num}">${noticeVO.title}</a></td>
							  <td>${noticeVO.writer}</td>
							  <td>${noticeVO.hit}</td>
							  <td>${noticeVO.date}</td>
						    </tr>
					    </c:forEach>
					  </tbody>
					</table>
					<a href="./insert" id="writing">글쓰기</a>
			
					<!-- 검색 -->
					<form action="./list" id="frm">
						<input type="hidden" name="pageNum" value="1" id="pageNum">
						<select name="kind" id="kind">
							<option class="s" value="title">제목</option>
							<option class="s" value="contents">내용</option>
							<option class="s" value="writer">작성자</option>
						</select>
						<input type="text" name="search" id="search" value="${pager.search}">
						<button type="submit" id="btn">검색</button>
					</form>
				</section>
			<!-- 페이징 -->
			<section id="paging">
				<button class="p" data-list-pn="${pager.startNum-1}" type="button">이전</button>
							
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
					<span class="p" data-list-pn="${i}" >${i}</span>
				</c:forEach>
							
				<c:if test="${!pager.lastCheck}">
					<button class="p" data-list-pn="${pager.lastNum+1}" type="button">다음</button>
				</c:if>
			</section>
		</div>
		<%@ include file="../common/footer.jsp"%>
		<script type="text/javascript" src="/js/list.js"></script>
		<script type="text/javascript">
			setKind("${pager.kind}");
		</script>
	</body>
</html>