<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<<<<<<< HEAD
<%@ include file="./../common/user.jsp" %>

<style type="text/css">
	.err{
		font-size: 9pt;
		color:orange;
		font-weight: bold;
	}
	
	table .w20 {
		display: inline-block;
		width: 20%;
	}
</style>

=======
>>>>>>> e05b927dcf2cacd49c0f8c429d1646d8597a56d3
<script type="text/javascript">
	function register() {
		location.href = "registerForm.me"; // => MemberRegisterController.java
	}
	function findId(){
		location.href = "findId.me";
	}
	function findPw(){
		location.href = "findPw.me";
	}
</script>
<<<<<<< HEAD
<br>
<br>
<div class="container">

=======
member\memberLoginForm.jsp<br>
로그인화면<br>
>>>>>>> e05b927dcf2cacd49c0f8c429d1646d8597a56d3
<form method="post" action="loginForm.me">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" value="coco"></td>
		</tr>
		
		<tr>
			<td>비번</td>
			<td><input type="text" name="password" value="1234"></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="submit" value="로그인">
				<input type="button" value="회원가입" onClick="register()">
				<input type="button" value="아이디찾기" onClick="findId()">
				<input type="button" value="비밀번호찾기" onClick="findPw()">
			</td>
		</tr>
	</table>
</form>
<<<<<<< HEAD
</div>
=======

>>>>>>> e05b927dcf2cacd49c0f8c429d1646d8597a56d3

