<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../../common/common.jsp"%>
<!DOCTYPE html>
<html>
<style type="text/css">
	.err{
		color: red;
		font-size: 13px;
	}
</style>

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<title>Insert title here</title>
</head>

<body class="container">
<h1>자주묻는질문</h1>
<hr>
	<form:form commandName="qna" action="insert.qna" method="post">
		<label for="category" class="form-label">카테고리</label>
		<form:errors cssClass="err" path="category"/> <br>
		<select class="form-select" name="category" id="category" aria-label="Default select example">
		  <option value="0">카테고리 선택</option>
		  <option value="전체">전체</option>
		  <option value="회원가입">회원가입</option>
		  <option value="전시관련">전시관련</option>
		  <option value="티켓구매/발권">티켓구매/발권</option>
		  <option value="취소/환불">취소/환불</option>
		  <option value="기타">기타</option>
		</select>
		<br><br>
		
		<div class="mb-3">
			<label for="question" class="form-label">질문</label>
			<input type="text" class="form-control" name="question" id="question" value="${notice.title}" placeholder="질문을 입력하세요">
			<form:errors cssClass="err" path="question"/>
		</div>
	
		<div class="mb-3" style="margin-top: 20px">
			<label for="answer" class="form-label">답변</label>
 			<textarea class="form-control" name="answer" id="answer" placeholder="답변을 입력하세요" rows="3">${notice.content}</textarea>
			<form:errors cssClass="err" path="answer"/>
		</div>
		
		<p align="right">
			<button type="button" class="btn btn-secondary btn-sm" onClick="location.href='form-label'">등록하기</button>
		</p>
	</form:form>
</body>
</body>
</html>