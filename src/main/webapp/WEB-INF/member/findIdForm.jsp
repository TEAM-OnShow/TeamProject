<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp" %>
    
findIdForm.jsp<br>
<h2>아이디 찾기</h2>

	<form:form commandName = "member" method="post" action ="findId.me">
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
		
		<p>
			<label>휴대폰번호</label>
			<input type="text" name="hp1">
			<form:errors cssClass="err" path="hp1"/>
			<input type="text" name="hp2">
			<form:errors cssClass="err" path="hp2"/>
			<input type="text" name="hp3">
			<form:errors cssClass="err" path="hp3"/>
		</p>
		
		<p class="btnRow">
			<input type="submit" value="아이디 찾기">
		</p>
	</form:form>