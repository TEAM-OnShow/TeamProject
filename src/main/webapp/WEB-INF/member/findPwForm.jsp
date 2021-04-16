<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp" %>
    
findPwForm.jsp<br>
<h2>비밀번호찾기</h2>

	<form:form commandName = "member" method="post" action ="findPw.me">
		<p>
			<label for = "id">아이디</label>
			<input type="text" name="id">
			<form:errors cssClass="err" path="id"/>
		</p>
		
		<p>
			<label for = "name">이름</label>
			<input type="text" name="name">
			<form:errors cssClass="err" path="name"/>
			
		</p>
		
		<p>
			<label for = "email">이메일</label>
			<input type="text" name="email">
			<form:errors cssClass="err" path="email"/>
		</p>
		
		<p class="btnRow">
			<input type="submit" value="비밀번호 찾기">
		</p>
	</form:form>