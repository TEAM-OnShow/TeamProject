<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/user.jsp" %>

<!-- cartList.jsp => 장바구니(결재하기, 둘러보기) -->
<style>
	table {
		width:80%;
		margin:0 auto 20px;
	}
	
	th, td {
		padding: 5px;
	}
	
	table a {
		color: white;
		font-weight: bold;
	}
</style>

<div class="container">
	<h3 align=center style="padding:20px 0">장바구니 내역</h3>
	<table border=1 class="table-secondary">
		<tr class="table-success">
			<td colspan="5" align=center>
				회원 정보 : ${ loginInfo.name }(${ loginInfo.id })
			</td>
		</tr>
		<tr class="table-primary" align="center">
			<th>번호</th>
			<th>전시/박람명 (관람 날짜 / 관람시간)</th>
			<th>주문 수량</th>
			<th>단가</th>
			<th>금액</th>
		</tr>
		<c:if test="${ cart == null }">
			<tr>
				<td colspan="5" align="center">장바구니가 비었습니다.</td>
			</tr>
		</c:if>
		<c:if test="${ cart != null }">
			<c:forEach var="cart" items="${ sessionScope.cartList }">
			<tr>
				<td align=center>${ cart.pnum }</td>
				<td align=center>${ cart.pname }</td>
				<td align=center>${ cart.oqty }</td>
				<td align=right><fmt:formatNumber pattern="#,###">${ cart.price }</fmt:formatNumber> 원</td>
				<td align=right><fmt:formatNumber pattern="#,###">${ cart.amount }</fmt:formatNumber> 원</td>
			</tr>
			</c:forEach>
		</c:if>
		<tr>
			<td colspan="4" align=center>
				<a class="btn btn-primary" href="account.re">결재하기</a> &nbsp; &nbsp;
				<a class="btn btn-success" href="userExhibit.ex">추가 주문</a>
			</td>
			<td align=center><b>총 금액 : <fmt:formatNumber pattern="#,###">${ totalAmount }</fmt:formatNumber> 원</b></td>
		</tr>
	</table>
</div>
