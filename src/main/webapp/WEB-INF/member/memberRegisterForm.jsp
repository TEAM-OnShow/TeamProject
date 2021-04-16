<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./../common/user.jsp" %>

<%
<<<<<<< HEAD
	String[] styleArr = {"현대적인", "예술적인","감각적인","실용적인","에너지넘치는","감성적인"};
=======
	String[] styleArr = {"뷰티","여행","유학/취업","가전","가구/생활"};
>>>>>>> e05b927dcf2cacd49c0f8c429d1646d8597a56d3
%>

<style type="text/css">
	.err{
		font-size: 9pt;
		color:orange;
		font-weight: bold;
	}
	
	table .w20 {
		display: inline-block;
		width: 20%;
	}
</style>

<div class="container">
	<h3 align=center style="padding:20px 0">회원가입</h3>
	<form:form commandName="member" method="post" action="registerForm.me">
		<table border=1 class="table table-secondary">
			<tr>
				<th width="25%" class="table-primary"><label for="id">아이디</label></th>
				<td>
					<input type="text" name="id" class="form-control" value="${ member.id }">
					<form:errors cssClass="err" path="id"/>
				</td>
			</tr>
			<tr>
				<th class="table-primary"><label for="password">비밀번호</label></th>
				<td>
					<input type="password" name="password" class="form-control" value="${ member.password }">
					<form:errors cssClass="err" path="password"/>
				</td>
			</tr>	
			<tr>
				<th class="table-primary"><label for="repassword">비밀번호 확인</label></th>
				<td>
					<input type="password" name="repassword" class="form-control">
					<form:errors cssClass="err" path="repassword"/>
				</td>
			</tr>	
			<tr>
				<th class="table-primary"><label for="name">이름</label></th>
				<td>
					<input type="text" name="name" class="form-control" value="${ member.name }">
					<form:errors cssClass="err" path="name"/>
				</td>
			</tr>
			<tr>
				<th class="table-primary"><label for="gender">성별</label></th>
				<td>
					<input type="radio" name="gender" value="남자"> 남자
					<input type="radio" name="gender" value="여자"> 여자
				</td>
			</tr>
			<tr>
				<th class="table-primary"><label for="age">나이</label></th>
				<td>
					<input type="text" name="age" class="form-control">
				</td>
			</tr>
			<tr>
				<th class="table-primary"><label for="year">생일</label></th>
				<td>
					<select name="year" class="form-control w20">
<<<<<<< HEAD
						<c:forEach begin="1910" end="2021" var="y">
=======
						<c:forEach begin="1950" end="2021" var="y">
>>>>>>> e05b927dcf2cacd49c0f8c429d1646d8597a56d3
							<option value="${ y }"
							<c:if test="${ y == 1990 }"> selected</c:if>
							> ${ y }
						</c:forEach>
					</select>년 
					
					<select name="month" class="form-control w20">
						<c:forEach begin="1" end="12" var="m">
							<option value="${ m }"> ${ m }
						</c:forEach>
					</select>월 
					
					<select name="day" class="form-control w20">
						<c:forEach begin="1" end="31" var="d">
							<option value="${ d }"> ${ d }
						</c:forEach>
					</select>일
				</td>
			</tr>
			<tr>
				<th class="table-primary"><label for="email">이메일</label></th>
				<td>
					<input type="text" name="email" class="form-control" value="${ member.email }">
					<form:errors cssClass="err" path="email"/>
				</td>
			</tr>
			<tr>
				<th class="table-primary"><label for="hp1">핸드폰</label></th>
				<td>
					<input type="text" name="hp1" class="form-control w20" value="${ member.hp1 }">
					-
					<input type="text" name="hp2" class="form-control w20" value="${ member.hp2 }">
					-
					<input type="text" name="hp3" class="form-control w20" value="${ member.hp3 }"><br>
<<<<<<< HEAD
					<form:errors cssClass="err" path="hp1"/>
					<form:errors cssClass="err" path="hp2"/>
=======
					<form:errors cssClass="err" path="hp1"/><br>
					<form:errors cssClass="err" path="hp2"/><br>
>>>>>>> e05b927dcf2cacd49c0f8c429d1646d8597a56d3
					<form:errors cssClass="err" path="hp3"/>
				</td>
			</tr>
			<tr>
				<th class="table-primary">
					<label for="add1">주소</label><br>
					<label for="add2">세부주소</label>
				</th>
				<td>
					<input type="text" name="add1" class="form-control" value="${ member.add1 }"><br>
					<input type="text" name="add2" class="form-control" value="${ member.add2 }">
				</td>
			</tr>
			<tr>
				<th class="table-primary"><label for="style">취향</label></th>
				<td>
					<c:forEach var="style" items="<%=styleArr%>">
						<input type="checkbox" name="style" value="${ style }" 
						<c:if test="${ fn:contains(member.style,style) }">checked</c:if>
						> ${ style }
					</c:forEach>
				</td>
			</tr>
			<tr>
				<th class="table-primary"><label for="cat">관심 카테고리</label></th>
				<td>
<<<<<<< HEAD
					<select name="cat">
						<option value="">선택
					<c:forEach var="cate" items="${list }">
						<option value="${cate.kind}">${cate.kind}(${cate.code })</option>  
					</c:forEach>
					</select>
					<form:errors cssClass="err" path="category"/>
=======
					<c:if test="${ fn:length(clist) == 0 }">
						카테고리 등록 전입니다. 회원가입 후 수정 가능합니다.
					</c:if>
					<c:if test="${ fn:length(clist) > 0 }">
						<c:forEach var="cat" items="${ clist }">
							<input type="checkbox" name="cat" value="${ cat.kind }" 
							<c:if test="${ fn:contains(member.cat,cat.kind) }">checked</c:if>
							> ${ cat.kind }
						</c:forEach>
					</c:if>
>>>>>>> e05b927dcf2cacd49c0f8c429d1646d8597a56d3
				</td>
			</tr>
			
			<tr class="btnRow">
				<td colspan=2 align="center" class="table-primary">
					<input type="submit" value="회원가입" class="btn btn-secondary">
				</td>
			</tr>
		</table>
	</form:form>
</div>