<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>

<!-- cartList.jsp => 장바구니(결재하기, 둘러보기) -->

<h2>장바구니 내역</h2>
<table border=1>
	<tr>
		<td colspan="5" align=center>
			회원 정보 : ${ loginInfo.name }(${ loginInfo.id })
		</td>
	</tr>
	<tr>
		<th>번호</th>
		<th>전시/박람명 (관람 날짜 / 관람시간)</th>
		<th>주문 수량</th>
		<th>단가</th>
		<th>금액</th>
	</tr>
	<c:forEach var="cart" items="${ sessionScope.cartList }">
	<tr>
		<td align=center>${ cart.pnum }</td>
		<td align=center>${ cart.pname }</td>
		<td align=center>${ cart.oqty }</td>
		<td align=right><fmt:formatNumber pattern="#,###">${ cart.price }</fmt:formatNumber> 원</td>
		<td align=right><fmt:formatNumber pattern="#,###">${ cart.amount }</fmt:formatNumber> 원</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="4" align=center>
			<a href="account.re">결재하기</a> &nbsp; &nbsp;
			<a href="userExhibit.ex">추가 주문</a>
		</td>
		<td align=center>총 금액 : <fmt:formatNumber pattern="#,###">${ totalAmount }</fmt:formatNumber> 원</td>
	</tr>
</table>
