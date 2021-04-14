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
	<div class="row" style="margin-top:50px;">
		<div class="col-2"> </div>
	    <div class="col-8">
	    	<div class="row">
			    <div class="col-2"> 제목 </div>
			    <div class="col-10"> ${notice.title} </div>
			</div>
			<div class="row">
			    <div class="col-2"> 작성일 </div>
			    <div class="col-6">
			      <fmt:formatDate value="${notice.regdate}" var="regdate" type="Date" pattern="yyyy-MM-dd"/>
				   ${regdate} 
			    </div>
			    <div class="col-2"> 조회수 </div>
			    <div class="col-2"> ${notice.viewcnt} </div>
			</div>
			<hr>
			
			<div>
			${notice.content}
			</div>
			
			<hr>
			<p align="right">
			<button type="button" class="btn btn-primary btn-sm" onClick="location.href='update.nt?no=${notice.no}&pageNumber=${pageNumber}'">수정</button>
			<button type="button" class="btn btn-primary btn-sm" onClick="location.href='delete.nt?no=${notice.no}&pageNumber=${pageNumber}'">삭제</button>
			<button type="button" class="btn btn-secondary btn-sm" onClick="location.href='list.nt?pageNumber=${pageNumber}'">글목록</button>
			</p>
	    </div>
	    <div class="col-2"> </div>
	</div>
	
	
	
</body>
</html>