<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<<<<<<< HEAD
<%@ include file="./../common/user.jsp" %>

<%
	String[] styleArr = {"현대적인", "예술적인","감각적인","실용적인","에너지넘치는","감성적인"};
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
	<h3 align=center style="padding:20px 0">마이페이지 수정</h3>
	<form:form commandName="member" method="post" action="update.me">
		<table border=1 class="table table-secondary">
			<tr>
				<th width="25%" class="table-primary"><label for="id">아이디</label></th>
				<td>
					${loginInfo.id }
				</td>
			</tr>
			<tr>
				<th class="table-primary"><label for="password">비밀번호</label></th>
				<td>
					<input type="password" name="password" class="form-control" value="${ loginInfo.password }">
					<form:errors cssClass="err" path="password"/>
				</td>
			</tr>	
			<tr>
				<th class="table-primary"><label for="repassword">비밀번호 확인</label></th>
				<td>
					<input type="password" name="repassword" class="form-control" value="${ loginInfo.repassword}">
					<form:errors cssClass="err" path="repassword"/>
				</td>
			</tr>	
			<tr>
				<th class="table-primary"><label for="name">이름</label></th>
				<td>
					${loginInfo.name }
				</td>
			</tr>
			<tr>
				<th class="table-primary"><label for="gender">성별</label></th>
				<td>
					${loginInfo.gender }
				</td>
			</tr>
			<tr>
				<th class="table-primary"><label for="age">나이</label></th>
				<td>
					${loginInfo.age }
				</td>
			</tr>
			<tr>
				<th class="table-primary"><label for="year">생일</label></th>
				<td>
					<select name="year" class="form-control w20">
						<c:forEach begin="1910" end="2021" var="y">
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
					<input type="text" name="email" class="form-control" value="${ loginInfo.email }">
					<form:errors cssClass="err" path="email"/>
				</td>
			</tr>
			<tr>
				<th class="table-primary"><label for="hp1">핸드폰</label></th>
				<td>
					<input type="text" name="hp1" class="form-control w20" value="${ loginInfo.hp1 }">
					-
					<input type="text" name="hp2" class="form-control w20" value="${ loginInfo.hp2 }">
					-
					<input type="text" name="hp3" class="form-control w20" value="${ loginInfo.hp3 }"><br>
					<form:errors cssClass="err" path="hp1"/>
					<form:errors cssClass="err" path="hp2"/>
					<form:errors cssClass="err" path="hp3"/>
				</td>
			</tr>
			<tr>
				<th class="table-primary">
					<label for="add1">주소</label><br>
					<label for="add2">세부주소</label>
				</th>
				<td>
					<input type="text" name="add1" class="form-control" value="${ loginInfo.add1 }"><br>
					<input type="text" name="add2" class="form-control" value="${ loginInfo.add2 }">
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
					<select name="cat">
						<option value="">선택
					<c:forEach var="cate" items="${list }">
						<option value="${cate.kind}">${cate.kind}(${cate.code })</option>  
					</c:forEach>
					</select>
					
				</td>
			</tr>
			
			<tr class="btnRow">
				<td colspan=2 align="center" class="table-primary">
					<input type="submit" value="수정하기" class="btn btn-secondary">
				</td>
			</tr>
		</table>
	</form:form>
</div>
=======
<%@ include file="./../common/common.jsp" %>

<style type="text/css">
.err{
	font-size: 9pt;
	color:orange;
	font-weight: bold;
}
</style>

<h2>마이페이지 수정 </h2>
<form:form commandName="member" method="post" action="update.me" enctype ="multipart/form-data">
<input type="hidden" name="num" value="${loginInfo.num}">
	<p>
		<label for="id">아이디</label>
		=>  ${loginInfo.id}
	</p>
	<p>
		<label for="name">이름</label>
		=>  ${loginInfo.name}
	</p>
	<p>
		<label for="age">나이</label>
		=>  ${loginInfo.age}
	</p>
	<p>
		<label for="gender">성별</label>
		=>  ${loginInfo.gender}
	</p>
	<p>
		<label for="password">비밀번호</label>
		<input type="password" name="password" value="${loginInfo.password}">
		<form:errors cssClass="err" path="password"/>
	</p>	

	<p>
		<label for="year">년도</label>
		<input type="text" name="year" value="${loginInfo.year}">
		
		<label for="month">월</label>
		<input type="text" name="month" value="${loginInfo.month}">
		
		<label for="day">일</label>
		<input type="text" name="day" value="${loginInfo.day}">
	</p>
	<p>
		<label for="email">이메일</label>
		<input type="text" name="email" value="${loginInfo.email}">
		<form:errors cssClass="err" path="email"/>
	</p>
	<p>
		<label for="hp1">폰1</label>
		<input type="text" name="hp1" value="${loginInfo.hp1}">
		
		<label for="hp2">폰2</label>
		<input type="text" name="hp2" value="${loginInfo.hp2}">
		
		<label for="hp3">폰3</label>
		<input type="text" name="hp3" value="${loginInfo.hp3}">
	</p>
	<p>
		<label for="add1">주소</label>
		<input type="text" name="add1" value="${loginInfo.add1}">
		
		<label for="add2">세부주소</label>
		<input type="text" name="add2" value="${loginInfo.add2}">
	</p>
	<p>
		<label for="style">취향</label>
		<input type="text" name="style" value="${loginInfo.style}">
	</p>
	<p>
		<label for="cat">관심 카테고리</label>
		<input type="text" name="cat" value="${loginInfo.cat}">
	</p>
	
	<p class="btnRow">
		<input type="submit" value="수정하기">		
	</p>
	
</form:form>
>>>>>>> e05b927dcf2cacd49c0f8c429d1646d8597a56d3
