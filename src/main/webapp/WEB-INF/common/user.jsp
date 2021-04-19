<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common.jsp"%>

<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	  
	Calendar cal = Calendar.getInstance();
	cal.add(Calendar.MONTH, 1);
	
	String day = sdf.format(cal.getTime());
	
	System.out.println(day);
%>

<style type="text/css">
	.top-a{
		font-size: 14px;
		color: #353535;
	}
	.top-span{
		font-size :10px;
		margin-right: 5px;
		margin-left: 5px;
	}
	.afont{
		color: #001054;
		font-size: 18px;
		font-weight: 600;
		margin-right: 30px;
	}
</style>

<!-- 홈페이지 상단 바 -->
<div class="border-bottom border-light mb-2" style="height: 40px">
	<div style="position: absolute; top:10px; right:30px">
		<c:if test="${sessionScope.loginId == 'penguin'}">
		<a class="top-a" href="main.jsp">관리자홈</a>
		</c:if>
		<c:if test="${sessionScope.loginId != 'penguin'}">
		<a class="top-a" href="user.jsp">홈</a>
		</c:if>
		<span class="top-span text-light">│</span>
		<c:if test="${loginInfo.num == null}">
			<a class="top-a" href="loginForm.me">로그인</a>
			<span class="top-span text-light">│</span>
			<a class="top-a" href="registerForm.me">회원가입</a>
		</c:if>
		<c:if test="${loginInfo.num != null}">
			<a class="top-a" href="logout.jsp">로그아웃</a>
			<span class="top-span text-light">│</span>
			<a class="top-a" href="cart.re">장바구니</a>
		</c:if>
	</div>
</div>

<!-- onshow 로고 -->
<div align="center">
	<a href="user.jsp"><img src="resources/image/onshow.png" width="300px"></a>
	<!-- <a href="user.jsp"><img src="resources/image/onshoweng.png" width="300px"></a>
	<a href="user.jsp"><img src="resources/image/onshowTNR.png" width="350px"></a> -->
</div>

<!-- 네비 메뉴바 -->
<div align="center">
<nav class="navbar navbar-expand-lg border-bottom border-light my-3 pb-2">
	<button class="navbar-toggler" type="button" data-toggle="collapse"	data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarColor01">
		<ul class="navbar-nav text-center m-auto">
			<li class="nav-item dropdown mx-5">
				<a class="nav-link dropdown-toggle afont" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">회사소개</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="info.com">회사소개</a>
						<a class="dropdown-item" href="location.com">찾아오시는길</a>
						<a class="dropdown-item" href="ceo.com">대표이사</a>
				</div>
			</li>

			<li class="nav-item dropdown mx-5">
				<a class="nav-link dropdown-toggle afont" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">전시·박람</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="userExhibit.ex">전시/박람회 목록</a> 
					<a class="dropdown-item" href="exhibitPlan.ex?day=<%=day%>">예정 프로그램</a> 
					<a class="dropdown-item" href="reserve.ex">예약방법</a>
				</div>
			</li>

			<li class="nav-item dropdown mx-5">
				<a class="nav-link dropdown-toggle afont" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">회원페이지</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="info.me">내정보</a>
            		<a class="dropdown-item" href="update.me">회원정보수정</a>
					<a class="dropdown-item" href="order.re">구매내역</a>
					<a class="dropdown-item" href="list.inq?whatColumn=id&keyword=${sessionScope.loginId}&mylist=1">문의내역</a>
				</div>
			</li>
			
			<li class="nav-item dropdown mx-5">					
				<a class="nav-link dropdown-toggle afont" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">고객센터</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="list.nt">공지사항</a>
					<a class="dropdown-item" href="list.qna">자주묻는질문</a>
					<a class="dropdown-item" href="list.inq">1:1문의</a>
				</div>
			</li>
		</ul>
	</div>
</nav>
</div>