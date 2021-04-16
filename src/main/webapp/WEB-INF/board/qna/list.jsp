<%@page import="member.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>
	.nav-border{
		height: 45px; font-weight: bold; padding-top: 10px;
		border-bottom: 1px solid grey; border-top: 1px solid grey;
		background-color: #EAEAEA;
	}
    .title{cursor:pointer;}
</style>

<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script>
/* 	$(document).ready(function(){
		  $("#title").click(function(){
		    $("#hide").toggle();
		  }); 
		}); */
    
</script>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%
		Member loginInfo = (Member) session.getAttribute("loginInfo");
		if(loginInfo == null) {
		%>
			<%@ include file="../../common/user.jsp" %>
		<% 	
		} else {
		   if(loginInfo.getNum()!=0) {
		   %>
		      <%@ include file="../../common/user.jsp" %>
		   <% 
		   } else {
		   %>
		      <%@ include file="../../common/admin.jsp" %>
		   <%
		   }
		}
	%>
</head>

<body class="container">
<h2 class="mt-4">자주묻는질문</h2>
<hr><br>
	<% String [] categories = {"전체", "회원가입", "전시관련", "티켓구매/발권", "취소/환불", "기타"}; %>
	
	<!-- 테스트 하기 위해 임시로 설정해둔것 -->
	<% session.setAttribute("loginId", "penguin"); %>

	<!-- Qna 네비게이션 버튼 -->
	<div class="" align="center">
		<c:forEach items="<%=categories%>" var="cats">
			<button type="button" class="btn btn-outline-success mr-2" onclick="location.href='list.qna?category=${cats}'">${cats}</button>	  
		</c:forEach>
	</div>
	
	<!-- Qna 메뉴 -->
	<br>
	<div class="row text-center nav-border">
		<div class=col>번호</div>
		<div class=col-2>카테고리</div>
		<div class=col-8>질문/답변</div>
		<div class=col></div>
	</div>

	<!-- Qna 리스트 -->
	<c:forEach items="${lists}" var="qna" varStatus="stu">
		<div class="row border-bottom text-center pt-3">
  			<div class=col>${(pageInfo.totalCount-stu.index)-((pageInfo.pageNumber-1)*pageInfo.pageSize)}</div>
  			<div class=col-2>${qna.category}</div>
  			<div class="col-8 pl-4" align="left">
  				<p class="title" id="title">${qna.question}</p>
  				<p id="hide" style="white-space:pre">${qna.answer}</p>
  				
  				<!-- 버튼: 관리자만 수정,삭제 가능 -->
  				<c:if test="${sessionScope.loginId=='penguin'}">
	  				<p>
	  				<button type="button" style="width:50px; height:30px; font-size: 12px;" class="btn btn-light btn-sm rounded-0" onClick="location.href='update.qna?no=${qna.no}&pageNumber=${pageInfo.pageNumber}'">수정</button>
					<button type="button" style="width:50px; height:30px; font-size: 12px;" class="btn btn-light btn-sm rounded-0" onClick="location.href='delete.qna?no=${qna.no}&pageNumber=${pageInfo.pageNumber}'">삭제</button>
	  				</p>
  				</c:if>
  			</div>
  			<div class=col>▼</div>
		</div>
	</c:forEach>
	
	<!-- 관리자용 버튼: 추가하기 -->
	<br>  
	<c:if test="${sessionScope.loginId=='penguin'}">
		<p align="right">
			<button type="button" class="btn btn-success rounded-0" onClick="location.href='insert.qna'">추가하기</button>
		</p>
	</c:if>
	
	<!-- 페이징 설정 -->
	<div>
	  <ul class="pagination justify-content-center">${pageInfo.pagingHtml}</ul>
	</div>
</body>

</html>