<%@page import="member.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>

<%
	String main = "main.jsp";
	Member loginInfo = (Member) session.getAttribute("loginInfo");
	if(loginInfo.getNum() != 0) {
		main = "user.jsp";
	}
%>
<!-- orderList.jsp => 주문 목록 보기 : 추가된 order 테이블 출력 -->
	
<h2>주문 내역</h2>
<table border=1>
	<c:if test="${ loginInfo.num > 0 }">
	<tr>
		<td colspan=3 align=center>
			주문자 정보 : ${ loginInfo.name }(${ loginInfo.id })
		</td>
	</tr>
	</c:if>
	<tr>
		<th>주문 번호</th>
		<c:if test="${ loginInfo.num == 0 }"><th>회원 아이디</th></c:if>
		<th>주문 일자</th>
		<th>상세 보기</th>
	</tr>
	<c:if test="${ fn:length(lists) == 0 }">
		<tr>
			<c:if test="${ loginInfo.num == 0 }"><td colspan=4 align="center">주문 내역이 없습니다.</td></c:if>
			<c:if test="${ loginInfo.num > 0 }"><td colspan=3 align="center">주문 내역이 없습니다.</td></c:if>
		</tr>
	</c:if>
	<c:forEach var="od" items="${ lists }">
	<tr align=center>
		<td>${ od.onum }</td>
		<c:if test="${ loginInfo.num == 0 }"><td>${ od.mid }</td></c:if>
		<td>
			<fmt:parseDate var="date" value="${ od.odate }" pattern="yyyy-MM-dd" />
			<fmt:formatDate value="${ date }"/>
		</td>
		<td><a href="detail.re?onum=${ od.onum }&mid=${ od.mid}">상세 보기</a></td>
	</tr>
	</c:forEach>
</table>
<input type="button" value="메인으로" onClick="location.href='<%=main%>'">
