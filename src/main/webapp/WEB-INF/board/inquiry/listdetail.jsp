<%@page import="member.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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
	<!-- 상세게시글 보기 전 비밀번호 입력 -->
	<script type="text/javascript">
	var loginId = '<%=session.getAttribute("loginId")%>'
	if(loginId != "penguin"){
			var password = prompt("해당 게시물의 비밀번호를 입력하세요");
			if(password!='${inq.pw}') {
				alert("비밀번호가 맞지않습니다");
				history.go(-1);
			}
		}
	</script>
	
	<h2 class="mt-4">1:1문의</h2>
	<hr><br>
	
	<c:choose>
		<c:when test="${inq.restep==0}"><c:set value="질문" var="h5"/></c:when>
		<c:otherwise><c:set value="답변" var="h5"/></c:otherwise>
	</c:choose>
	<div class="border-bottom border-secondary"><h5>${h5}</h5></div>

	<div class="row border-bottom ml-1 mr-1">
		<div class="col bg-light text-center py-2"><b>제목</b></div>
		<div class="col-10 border-left py-2">${inq.title}</div>
	</div>
	
	<div class="row border-bottom ml-1 mr-1">
		<div class="col bg-light text-center py-2"><b>문의유형</b></div>
		<div class="col-10 border-left py-2">${inq.category}</div>
	</div>
	
	<div class="row border-bottom ml-1 mr-1">
		<div class="col bg-light text-center py-2"><b>작성자</b></div>
		<div class="col-10 border-left py-2">
			<c:choose>
				<c:when test="${inq.id eq 'penguin'}"><c:out value="관리자"/></c:when>
				<c:otherwise>${inq.id}</c:otherwise>
			</c:choose>
		</div>
	</div>
	
	<fmt:formatDate value="${inq.regdate}" var="regdate" type="Date" pattern="yyyy-MM-dd HH:mm"/>
	<div class="row border-bottom ml-1 mr-1">
		<div class="col bg-light text-center py-2"><b>작성일</b></div>
		<div class="col-10 border-left py-2">${regdate}</div>
	</div>
	
	<div class="m-3" style="white-space:pre">${inq.content}</div>
	<hr>
	
	<c:choose>
		<c:when test="${inq.restep>0}">
			<c:if test="${sessionScope.loginId=='penguin'}">
				<p align="right">
				<button type="button" class="btn btn-primary btn-sm" onClick="location.href='update.inq?num=${inq.num}&ref=${inq.ref}&restep=${inq.restep}&pageNumber=${pageNumber}'">수정</button>
				<button type="button" class="btn btn-primary btn-sm" onClick="location.href='delete.inq?num=${inq.num}&ref=${inq.ref}&restep=${inq.restep}&pageNumber=${pageNumber}'">삭제</button>
				<button type="button" class="btn btn-secondary btn-sm" onClick="location.href='list.inq?pageNumber=${pageNumber}'">글목록</button>
				</p>
			</c:if>
		</c:when>
		<c:otherwise>
			<p align="right">
			<button type="button" class="btn btn-primary btn-sm" onClick="location.href='update.inq?num=${inq.num}&ref=${inq.ref}&restep=${inq.restep}&pageNumber=${pageNumber}'">수정</button>
			<button type="button" class="btn btn-primary btn-sm" onClick="location.href='delete.inq?num=${inq.num}&ref=${inq.ref}&restep=${inq.restep}&pageNumber=${pageNumber}'">삭제</button>
			<button type="button" class="btn btn-secondary btn-sm" onClick="location.href='list.inq?pageNumber=${pageNumber}'">글목록</button>
			</p>
		</c:otherwise>
	</c:choose>
			
	<c:if test="${sessionScope.loginId=='penguin' && inq.restep==0}">
		<center>
			<button type="button" class="btn btn-outline-primary btn-lg" onClick="location.href='reply.inq?num=${inq.num}&ref=${inq.ref}&restep=${inq.restep}&pageNumber=${pageNumber}'">답변등록</button>
	   	</center>
	</c:if>
</body>
</html>