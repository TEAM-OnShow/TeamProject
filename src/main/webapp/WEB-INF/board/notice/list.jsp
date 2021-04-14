<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../../common/common.jsp"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<title>Insert title here</title>
</head>

<body class="container">
<h1>공지사항</h1>
<hr>
	<table class="table table-hover">
	  <thead>
	    <tr>
	      <th scope="col">번호</th>
	      <th scope="col">제목</th>
	      <th scope="col">작성일</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach items="${lists}" var="notice">
		    <tr>
		      <th scope="row">${notice.no}</th>
		      <td><a href="listdetail.nt?no=${notice.no}&pageNumber=${pageInfo.pageNumber}">${notice.title}</a></td>
		      <td>
		      	<fmt:formatDate value="${notice.regdate}" var="regdate" type="Date" pattern="yyyy-MM-dd"/>
		      	${regdate}  
		      </td>
		    </tr>
	    </c:forEach>
	  </tbody>
	</table> 
	
	<p align="right">
		<button type="button" class="btn btn-secondary btn-sm" onClick="location.href='write.nt'">글쓰기</button>
	</p>
</body>

<div>
  <ul class="pagination justify-content-center">
    <li class="page-item active">
      ${pageInfo.pagingHtml}
    </li>
  </ul>
</div>

</html>