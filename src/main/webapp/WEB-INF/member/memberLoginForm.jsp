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
	session.setAttribute("login", "true"); // 로그인 시도 - 관리자의 경우 처음 로그인 시 관리자 화면으로
%>
<!-- member\memberLoginForm.jsp<br> -->

<div class="container"><br>
	<h3 align="center" style="padding:20px 0">로그인</h3>
	<form method="post" action="loginForm.me">
		<table border="1" class="table" style="width:auto; margin:0 auto">
			<tr>
				<td class="table-primary">아이디</td>
				<td><input class="form-control" type="text" name="id" value="coco"></td>
			</tr>
			
			<tr>
				<td class="table-primary">비번</td>
				<td><input class="form-control" type="text" name="password" value="1234"></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<input class="btn btn-success" type="submit" value="로그인">
					<input class="btn btn-primary" type="button" value="회원가입" onClick="register()">
					<input class="btn btn-secondary" type="button" value="아이디찾기" onClick="findId()">
					<input class="btn btn-secondary" type="button" value="비밀번호찾기" onClick="findPw()">
				</td>
			</tr>
		</table>
	</form>
</div>

