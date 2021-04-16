<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../../common/common.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<title>Insert title here</title>
</head>

<body class="container">
	<h1>공지사항</h1>
	<hr>
	
	<div class="row border-bottom border-top ml-1 mr-1">
		<div class="col bg-light text-center py-2"><b>제목</b></div>
		<div class="col-10 border-left py-2">${notice.title}</div>
	</div>
	
	<fmt:formatDate value="${notice.regdate}" var="regdate" type="Date" pattern="yyyy-MM-dd"/>
	<div class="row border-bottom ml-1 mr-1">
		<div class="col bg-light text-center py-2"><b>작성일</b></div>
		<div class="col-10 border-left py-2">${regdate}</div>
	</div>
	
	<div class="row border-bottom ml-1 mr-1">
		<div class="col bg-light text-center py-2"><b>조회수</b></div>
		<div class="col-10 border-left py-2">${notice.viewcnt}</div>
	</div>
	
	<div class="m-3" style="white-space:pre">${notice.content}</div>
	<hr>
			
	<p align="right">
		<c:if test="${sessionScope.loginId=='penguin'}">
			<button type="button" class="btn btn-secondary btn-sm" onClick="location.href='update.nt?no=${notice.no}&pageNumber=${pageNumber}'">수정</button>
			<button type="button" class="btn btn-secondary btn-sm" onClick="location.href='delete.nt?no=${notice.no}&pageNumber=${pageNumber}'">삭제</button>
		</c:if>
			<button type="button" class="btn btn-primary btn-sm" onClick="location.href='list.nt?pageNumber=${pageNumber}'">글목록</button>
	</p>

</body>
</html>