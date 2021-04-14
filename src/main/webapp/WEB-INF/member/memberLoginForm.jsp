<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/user.jsp" %>

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

<%
	session.setAttribute("login", "true"); // 로그인 시도
%>
<!-- member\memberLoginForm.jsp<br> -->

<div class="container"><br>
	<h3 align="center">로그인</h3>
	<form method="post" action="loginForm.me">
		<table border="1" style="margin:0 auto">
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
</div>

