<%@page import="member.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<title>Insert title here</title>
	<%
	   Member loginInfo = (Member) session.getAttribute("loginInfo");
	   if(loginInfo.getNum() != 0) {
	   %>
	      <%@ include file="../../common/user.jsp" %>
	   <% 
	   } else {
	   %>
	      <%@ include file="../../common/admin.jsp" %>
	   <%
	   }
	%>

<body class="container">
<h2 class="mt-4">공지사항</h2>
<hr><br>
	<form:form commandName="notice" action="write.nt" method="post">
		<div class="mb-3">
			<label for="title" class="form-label">제목</label>
			<input type="text" class="form-control" name="title" id="title" value="${notice.title}" placeholder="제목을 입력하세요">
			<form:errors cssClass="err" path="title"/>
		</div>
		
		<label for="imp" class="form-label">공지사항 중요도</label> <br>
		<div class="form-check" style="margin-left: 20px">
			<input class="form-check-input" type="radio" name="imp" id="imp1" value="0" checked>
			<label class="form-check-label" for="imp1">일반</label>
		</div>
		<div class="form-check" style="margin-left: 20px">
			<input class="form-check-input" type="radio" name="imp" id="imp2" value="1"
			<c:if test="${notice.imp==1}">checked</c:if>>
			<label class="form-check-label" for="imp2">중요</label>
		</div>
	
		<div class="mb-3" style="margin-top: 20px">
			<label for="content" class="form-label">내용</label>
 			<textarea class="form-control" name="content" id="content" placeholder="내용을 입력하세요" rows="10">${notice.content}</textarea>
			<form:errors cssClass="err" path="content"/>
		</div>
		
		<button type="submit" class="btn btn-secondary btn-sm">등록하기</button>
	</form:form>
</body>
</html>