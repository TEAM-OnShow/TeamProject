<%@page import="member.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<style type="text/css">
		.brd-bottom{
		 	border-bottom: 1px solid;
		 	border-bottom-color: #C2C2C2;
		 	padding-bottom: 13px;
		 	}
		
		.err{
			color: red;
			font-size: 12px;
		}
	</style>
	
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
</head>
<body class="container">
<h2 class="mt-4">1:1문의</h2>
<hr><br>
	<form:form commandName="inq" method="post" action="inqwrite.inq">
	
		<div class="mb-3 row brd-bottom">
			<label for="category" class="col">문의유형</label>
		    <div class="col-10">
		    	<% String[] categories = {"회원가입", "전시/박람문의", "티켓구매/발권", "취소/환불", "기타"}; %>
				<select class="form-select" name="category" id="category">
					<option value="">유형을 선택하세요</option>
						<c:forEach items="<%=categories%>" var="cats">
							<option value="${cats}" <c:if test="${inq.category eq cats}">selected</c:if>>${cats}</option>
						</c:forEach>
				</select> <br>
				<form:errors cssClass="err" path="category"/>
			</div>
		</div>
		
		<div class="mb-3 row brd-bottom">
		    <label for="title" class="col">제목</label>
		    <div class="col-10">
		      <input type="text" class="form-control" name="title" id="title" value="${inq.title}" maxlength="30" placeholder="제목을 30자 내로 입력해주세요">
		      <form:errors cssClass="err" path="title"/>
		    </div>
		</div>
		
		<div class="mb-3 row brd-bottom">
		    <label for="content" class="col">내용</label>
		    <div class="col-10">
		    	<textarea class="form-control" name="content" id="content" maxlength="150" placeholder="내용을 150자 내로 입력해주세요" rows="10">${inq.content}</textarea>
				<form:errors cssClass="err" path="content"/>
			</div>
		</div>
		
		<div class="mb-3 brd-bottom">
			<div class="row">
			    <label for="pw" class="col-2">비밀번호</label>
			    <div class="col-4">
			      <input type="password" class="form-control" name="pw" id="pw" value="${inq.pw}">
			    </div>
		    </div>
		    <div class="row">
		    	<div class="col-2"></div>
		    	<div class="col-10 mt-2" style="font-size:12px">*홈페이지에서의 답변내용 확인을 위한 비밀번호를 <font color=#ED0000>'숫자 4자리 이상 8자리 이하'</font>로 입력해주세요. <br>
			    <form:errors cssClass="err" path="pw"/>
			    </div>
		    </div>
		</div>
		
		<div class="mb-3 row brd-bottom">
		    <label for="pwcheck" class="col-2">비밀번호 확인</label>
		    <div class="col-4">
		     	<input type="password" class="form-control" name="pwcheck" id="pwcheck">
		    </div>
		</div>
		
		<p align="center">
		<button type="submit" class="btn btn-secondary">등록하기</button>
		</p>
	</form:form>
</body>

</html>



