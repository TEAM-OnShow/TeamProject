<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
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
=======
<%@ include file="./../common/user.jsp" %>

<style>
	.w25 {
		width: 25%;
		display: inline-block;
	}
</style>
    
<!-- findIdForm.jsp<br> -->
<div class="container">
	<h3 align=center style="padding:20px 0">아이디 찾기</h3>

	<form:form commandName = "member" method="post" action ="findId.me">
		<table border=1 class="table">
		<tr>
			<th class="table-secondary"><label for = "name">이름</label></th>
			<td>
				<input class="form-control" type="text" name="name" min="1" required>
				<form:errors cssClass="err" path="name"/>
			</td>
		</tr>
		
		<tr>
			<th class="table-secondary"><label for = "email">이메일</label></th>
			<td><input class="form-control" type="text" name="email" min="1" required>
			<form:errors cssClass="err" path="email"/></td>
		</tr>
		
		<tr>
			<th class="table-secondary"><label>휴대폰번호</label></th>
			<td><input class="form-control w25" type="text" name="hp1" min="1" maxlength="3" required>
			<form:errors cssClass="err" path="hp1"/> - 
			<input class="form-control w25" type="text" name="hp2" min="1" maxlength="4" required>
			<form:errors cssClass="err" path="hp2"/> - 
			<input class="form-control w25" type="text" name="hp3" min="1" maxlength="4" required>
			<form:errors cssClass="err" path="hp3"/></td>
		</tr>
		
		<tr align="center" class="table-primary">
			<td colspan=2><input class="btn btn-secondary" type="submit" value="아이디 찾기"></td>
		</tr>
		</table>
	</form:form>
	
</div>
>>>>>>> c5dcf89fce4a7ec74b779e75fc2460738fab6f46
