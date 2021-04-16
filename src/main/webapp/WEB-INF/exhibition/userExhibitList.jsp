<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common/user.jsp" %>
<%@ include file="top.jsp"%>

<!-- userExhibitList.jsp<br> -->

			<table border="1" frame="void" class="table table-hover">
				<tr align="center">
					<%
						int cnt = 0;
					%>
					<c:forEach var="exhibit" items="${list }">
					<%
						cnt++;
					%>
						<td>
						<a href="userExhibitDetail.ex?num=${exhibit.num }"> 
						<img src="<%=request.getContextPath()%>/resources/${exhibit.img }" width="100px" height="100px">
						</a> <br> 
						<b>${exhibit.name }</b><br> 
						<fmt:parseDate var="date1" value="${exhibit.start_period }" pattern="yyyy-MM-dd" /> 
						<fmt:parseDate var="date2" value="${exhibit.end_period }" pattern="yyyy-MM-dd" />
						<fmt:formatDate value="${date1 }" />~<fmt:formatDate value="${date2 }" /><br> 
						입장료: ${exhibit.price }원 
					<%
 						if (cnt % 3 == 0) {
					 %>
						 </td>
					<tr align="center">
					<%
						}
					%>
					</c:forEach>
				</tr>
			</table>
		</td>
	</tr>
</table>
</div>