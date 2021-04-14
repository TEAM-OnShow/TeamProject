<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>

<h2>관리자 화면</h2>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<div class="container">
				<a class="navbar-brand" href="#">OnShow</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				
				<div class="collapse navbar-collapse" id="navbarColor01">
					<ul class="navbar-nav mr-auto">
					    <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">회사소개</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">회사소개</a>
								<a class="dropdown-item" href="#">찾아오시는길</a>
								<a class="dropdown-item" href="#">대표이사</a>
							</div>
					    </li>
					    
					    <li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">전시/박람</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="cateInput.ca">카테고리등록</a>
								<a class="dropdown-item" href="cateList.ca">카테고리목록</a>
								<a class="dropdown-item" href="exhibitInput.ex">전시/박람등록</a>
								<a class="dropdown-item" href="exhibitList.ex">전시/박람목록</a>
							</div>
					    </li>
					    
					    <li class="nav-item dropdown">
					      <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">회원페이지</a>
					      <div class="dropdown-menu">
					      	<a class="dropdown-item" href="#">내정보</a>
					      	<a class="dropdown-item" href="#">회원정보수정</a>
					      	<a class="dropdown-item" href="order.re">구매내역</a>
					      	<a class="dropdown-item" href="#">문의내역</a>
					      </div>
					    </li>
					    
					    <li class="nav-item dropdown">
					      <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">고객센터</a>
					      <div class="dropdown-menu">
					      	<a class="dropdown-item" href="list.nt">공지사항</a>
					      	<a class="dropdown-item" href="#">Q&A</a>
					      	<a class="dropdown-item" href="#">1:1문의</a>
					      	<a class="dropdown-item" href="#">고객센터</a>
					      </div>
					    </li>
					</ul>
				</div>	
		  </div>
		</nav>