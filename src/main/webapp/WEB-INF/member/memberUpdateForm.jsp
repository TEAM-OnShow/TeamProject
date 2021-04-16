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

<h2>마이페이지 수정 </h2>
<form:form commandName="member" method="post" action="update.me" >
<input type="hidden" name="num" value="${loginInfo.num}">
	<p>
		<label for="id">아이디</label>
		=>  ${loginInfo.id}
	</p>
	<p>
		<label for="name">이름</label>
		=>  ${loginInfo.name}
	</p>
	<p>
		<label for="age">나이</label>
		=>  ${loginInfo.age}
	</p>
	<p>
		<label for="gender">성별</label>
		=>  ${loginInfo.gender}
	</p>
	<p>
		<label for="password">비밀번호</label>
		<input type="password" name="password" value="${loginInfo.password}">
		<form:errors cssClass="err" path="password"/>
	</p>	

	<p>
		<label for="year">년도</label>
		<input type="text" name="year" value="${loginInfo.year}">
		
		<label for="month">월</label>
		<input type="text" name="month" value="${loginInfo.month}">
		
		<label for="day">일</label>
		<input type="text" name="day" value="${loginInfo.day}">
	</p>
	<p>
		<label for="email">이메일</label>
		<input type="text" name="email" value="${loginInfo.email}">
		<form:errors cssClass="err" path="email"/>
	</p>
	<p>
		<label for="hp1">폰1</label>
		<input type="text" name="hp1" value="${loginInfo.hp1}">
		
		<label for="hp2">폰2</label>
		<input type="text" name="hp2" value="${loginInfo.hp2}">
		
		<label for="hp3">폰3</label>
		<input type="text" name="hp3" value="${loginInfo.hp3}">
	</p>
	<p>
		<label for="add1">주소</label>
		<input type="text" name="add1" value="${loginInfo.add1}">
		
		<label for="add2">세부주소</label>
		<input type="text" name="add2" value="${loginInfo.add2}">
	</p>
	<p>
		<label for="style">취향</label>
		<input type="text" name="style" value="${loginInfo.style}">
	</p>
	<p>
		<label for="cat">관심 카테고리</label>
		<input type="text" name="cat" value="${loginInfo.cat}">
	</p>
	
	<p class="btnRow">
		<input type="submit" value="수정하기">		
	</p>
	
</form:form>