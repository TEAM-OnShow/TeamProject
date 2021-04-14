<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./../common/common.jsp" %>

<style type="text/css">
.err{
	font-size: 9pt;
	color:orange;
	font-weight: bold;
}
</style>

<h2>회원가입</h2>
	<form:form commandName="member" method="post" action="registerForm.me">
	<p>
		<label for="id">아이디</label>
		<input type="text" name="id">
		<form:errors cssClass="err" path="id"/>
	</p>
	<p>
		<label for="password">비밀번호</label>
		<input type="password" name="password">
		<form:errors cssClass="err" path="password"/>
	</p>	
	<p>
		<label for="repassword">비밀번호 확인</label>
		<input type="password" name="repassword">
		<form:errors cssClass="err" path="repassword"/>
	</p>	
	<p>
		<label for="name">이름</label>
		<input type="text" name="name">
		<form:errors cssClass="err" path="name"/>
	</p>
	<p>
		<label for="year">년도</label>
		<input type="text" name="year">
		
		<label for="month">월</label>
		<input type="text" name="month">
		
		<label for="day">일</label>
		<input type="text" name="day">
	</p>
	<p>
		<label for="email">이메일</label>
		<input type="text" name="email">
		<form:errors cssClass="err" path="email"/>
	</p>
	<p>
		<label for="hp1">폰1</label>
		<input type="text" name="hp1">
		
		<label for="hp2">폰2</label>
		<input type="text" name="hp2">
		
		<label for="hp3">폰3</label>
		<input type="text" name="hp3">
	</p>
	<p>
		<label for="add1">주소</label>
		<input type="text" name="add1">
		
		<label for="add2">세부주소</label>
		<input type="text" name="add2">
	</p>
	<p>
		<label for="style">취향</label>
		<input type="text" name="style">
	</p>
	<p>
		<label for="cat">관심 카테고리</label>
		<input type="text" name="cat">
	</p>
	
	<p class="btnRow">
		<input type="submit" value="회원가입">		
	</p>
	
</form:form>