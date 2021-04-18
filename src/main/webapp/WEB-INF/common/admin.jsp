<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common.jsp"%>

<!-- 관리자화면 상단 -->
<div class="container" style="position: relative">
	<h2 align=center>관리자 화면</h2>
	<div style="position: absolute; top:10px; right: 10px">
	<c:if test="${ loginInfo.num == null }">
		<a href="loginForm.me">로그인</a>
	</c:if>
	<c:if test="${ loginInfo.num != null }">
		<a href="user.jsp">사용자홈</a> | 
		안녕하세요! ${ loginInfo.id } 님 | 
		<a href="cart.re">장바구니</a> | 
		<a href="logout.jsp">로그아웃</a>
	</c:if>
	</div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<div class="container">
		<a class="navbar-brand" href="main.jsp">OnShow</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor01" aria-controls="navbarColor01"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">회사소개</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="info.com">회사소개</a>
						<a class="dropdown-item" href="location.com">찾아오시는길</a>
						<a class="dropdown-item" href="ceo.com">대표이사</a>
					</div>
				</li>

				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">전시/박람</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="cateInput.ca">카테고리등록</a>
						<a class="dropdown-item" href="cateList.ca">카테고리목록</a>
						<a class="dropdown-item" href="exhibitInput.ex">전시/박람등록</a>
						<a class="dropdown-item" href="exhibitList.ex">전시/박람목록</a>
					</div>
				</li>

				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">회원페이지</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="list.me">회원목록</a>
						<a class="dropdown-item" href="order.re">구매내역</a>
						<a class="dropdown-item" href="list.inq?whatColumn=id&keyword=${sessionScope.loginId}&mylist=1">문의 답글내역</a>
					</div>
				</li>

				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">고객센터</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="list.nt">공지사항</a>
						<a class="dropdown-item" href="list.qna">자주묻는질문</a>
						<a class="dropdown-item" href="list.inq">1:1문의</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
</nav>