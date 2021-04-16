<%@page import="member.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%
		Member loginInfo = (Member) session.getAttribute("loginInfo");
		if(loginInfo == null) {
		%>
			<%@ include file="../../common/user.jsp" %>
		<% 	
		} else {
		   if(loginInfo.getNum()!=0) {
		   %>
		      <%@ include file="../../common/user.jsp" %>
		   <% 
		   } else {
		   %>
		      <%@ include file="../../common/admin.jsp" %>
		   <%
		   }
		}
	%>
</head>

<body class="container">
	<c:choose>
		<c:when test="${sessionScope.loginId=='penguin'}">
			<div class="border-bottom border-secondary mt-5 pb-2"><h5 class="text-primary"><b>관리자 답글내역</b></h5></div>
		</c:when>
		<c:otherwise>
			<div class="border-bottom border-secondary mt-5 pb-2"><h5 class="text-primary"><b>나의문의내역</b></h5></div>
		</c:otherwise>
	</c:choose>

	<table class="table">
		<tr class="text-center">
			<th>번호</th>
			<th>문의유형</th>
			<th class="w-50">제목</th>
			<th>작성일</th>
		</tr>
		
		<c:forEach items="${lists}" var="inq" varStatus="stu">
			<tr class="text-center">
				<td>${(pageInfo.totalCount-stu.index)-((pageInfo.pageNumber-1)*pageInfo.pageSize)}</td>
				<td>${inq.category}</td>
				<td align="left">
					<i class="bi bi-lock ml-3 mr-2"></i>
					<a href="listdetail.inq?num=${inq.num}&pageNumber=${pageInfo.pageNumber}">${inq.title}</a>
				</td>
				<td>
					<fmt:formatDate value="${inq.regdate}" var="regdate" type="Date" pattern="yyyy-MM-dd"/>
			    	${regdate}
			    </td>
			</tr>
		</c:forEach>
	</table>
	
	<br>
	<ul class="pagination justify-content-center">${pageInfo.pagingHtml}</ul>
	
</body>
</html>