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
	<h1>1:1문의</h1>
	<hr>
	
	<form action="update.inq" method="post">
	<input type="hidden" name="pageNumber" value="${pageNumber}">
	<input type="hidden" name="num" value="${inq.num}">
	<input type="hidden" name="pw" value="${inq.pw}">
	
	<div class="border-bottom border-secondary"><h5>답변내용 수정</h5></div>
	
	<div class="row border-bottom ml-1 mr-1">
		<div class="col bg-light text-center border-right py-2"><b>제목</b></div>
		<input class="col-10 border-0 form-control py-2 pl-3" type="text" name="title" value="${inq.title}">
	</div>
	
	<div class="row border-bottom ml-1 mr-1">
		<div class="col bg-light text-center border-right py-2"><b>문의유형</b></div>
		<input class="col-10 border-0 py-2 pl-3" type="text" name="category" value="${inq.category}" readonly>
	</div>
	
	<div class="row border-bottom ml-1 mr-1">
		<div class="col bg-light text-center py-2"><b>작성자</b></div>
		<div class="col-10 border-left py-2">관리자</div>
	</div>
	
	<fmt:formatDate value="${inq.regdate}" var="regdate" type="Date" pattern="yyyy-MM-dd HH:mm"/>
	<div class="row border-bottom ml-1 mr-1">
		<div class="col bg-light text-center py-2"><b>작성일</b></div>
		<div class="col-10 border-left py-2">${regdate}</div>
	</div>
	
	<textarea class="form-control m-2" rows="15" name="content">${inq.content}</textarea>
	<hr>
			
	<p align="center">
		<button type="submit" class="btn btn-secondary">수정하기</button>
	</p>
	</form>
</body>
</html>