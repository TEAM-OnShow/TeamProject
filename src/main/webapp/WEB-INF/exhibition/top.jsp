<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- top.jsp<br> -->

<!-- <h2>전시/박람목록</h2> -->
<br><br>
<table border="1" frame="void" class="table table-hover">
	<tr align="center" class="table-secondary">
		<td> <b style=font-size:25pt;>[Category]</b><br><br>
			<table align="center">
				<c:forEach var="exhibit" items="${list }">
					<tr class="table-primary" align="center">
						<td>
							<a href="userSearchCate.ex?category=${exhibit.category}">${exhibit.category }</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</td>
		<td>