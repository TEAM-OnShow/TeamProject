<%@page import="member.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/user.jsp" %>

<!-- orderDetailList.jsp => 주문 상세 목록 보기 : order table의 primary key로 해당 orderdetail 목록 출력
로그인 id >> ${ loginInfo.id }<br> -->
<style>
	table {
		width:80%;
		margin:0 auto 20px;
	}
	
	th, td {
		padding: 5px;
	}
	
	td img {
		float: right;
	}
	
	table a {
		color: white;
		font-weight: bold;
	}
</style>

<div class="container">
	<h3 align=center style="padding:20px 0">주문 상세 내역</h3>
	<table border=1>
		<tr class="table-success">
			<td colspan=3>고객 : ${ mb.name }</td>
			<td colspan=2>주문 번호 : ${ onum }</td>
		</tr>
		<tr class="table-primary">
			<th>순번</th>
			<th>상품정보</th>
			<th>수량</th>
			<th>단가</th>
			<th>금액</th>
		</tr> 
		<c:forEach items="${ list }" var="show" varStatus="status">
		<tr class="table-secondary">
			<td align=center>${ status.count }</td>
			<td>
				<img src="<%=request.getContextPath()%>/resources/${ show.pimg }" width="100" height="100">
				<div style="float:left; padding:5px">
					행 사 명 : ${ show.pname }<br>
					관람날짜 : ${ show.oday }<br>
					관람시간 : ${ show.otime }:00
				</div>
			</td>
			<td align=center>${ show.oqty }</td>
			<td align="right"><fmt:formatNumber pattern="#,###">${ show.price }</fmt:formatNumber> 원</td>
			<td align="right"><fmt:formatNumber pattern="#,###" value="${ show.amount }" /> 원</td>
		</tr>
		</c:forEach>
	</table>
</div>
