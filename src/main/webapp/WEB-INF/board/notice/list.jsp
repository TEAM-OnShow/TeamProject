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
	   if(loginInfo.getNum() != 0) {
	   %>
	      <%@ include file="../../common/user.jsp" %>
	   <% 
	   } else {
	   %>
	      <%@ include file="../../common/admin.jsp" %>
	   <%
	   }
	%>
</head>

<body class="container">
<h2 class="mt-4">공지사항</h2>
<hr><br>

	<table class="table mt-5">
	    <tr class="text-center">
	      <th>번호</th>
	      <th class="w-50">제목</th>
	      <th>작성일</th>
	      <th>조회수</th>
	    </tr>

	  	<!-- 중요한 공지사항 먼저 띄우기 -->
	 	<c:forEach items="${imp_lists}" var="imp_notice">
		  	<tr class="text-center">				     	
		  		<td> <i class="bi bi-volume-up-fill"></i> </td>
				<td align="left">
				   	<a href="listdetail.nt?no=${imp_notice.no}&pageNumber=${pageInfo.pageNumber}">
				   	<b class="ml-3 mr-2">${imp_notice.title}</b>
				   	</a>
				</td>
				<td>
				   	<fmt:formatDate value="${imp_notice.regdate}" var="regdate" type="Date" pattern="yyyy-MM-dd"/>
			    	${regdate}  
			     </td>
			     <td>${imp_notice.viewcnt}</td>
			</tr>
	  	</c:forEach>
	  	
	  	<!-- 일반공지사항 리스트 -->
	  	<c:forEach items="${lists}" var="notice" varStatus="stu">
		    <tr class="text-center">
		      <td>${(pageInfo.totalCount-stu.index)-((pageInfo.pageNumber-1)*pageInfo.pageSize)}</td>
		      <td align="left">
				<a class="ml-3 mr-2" href="listdetail.nt?no=${notice.no}&pageNumber=${pageInfo.pageNumber}">${notice.title}</a>
		      </td>
		      <td>
		      	<fmt:formatDate value="${notice.regdate}" var="regdate" type="Date" pattern="yyyy-MM-dd"/>
		      	${regdate}  
		      </td>
		      <td>${notice.viewcnt}</td>
		    </tr>
	    </c:forEach>
	</table> 
	
	<% session.setAttribute("loginId", "penguin"); %>
	<c:if test="${sessionScope.loginId=='penguin'}">
		<p align="right">
			<button type="button" class="border border-secondary bg-light" onClick="location.href='write.nt'">
				<i class="bi bi-pencil"></i> 글쓰기
			</button>
		</p>
	</c:if>
	
  <ul class="pagination justify-content-center">${pageInfo.pagingHtml}</ul>
  
</body>
</html>