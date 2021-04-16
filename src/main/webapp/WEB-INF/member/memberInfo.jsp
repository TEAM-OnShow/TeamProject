<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
memberInfo.jsp<br>

<script type="text/javascript">

	function goUpdate(num){
		location.href='update.me?num='+num; 
		//update.me=> MemberUpdateController
	}
</script>


<h2>내정보(마이페이지)</h2>

<table border="1">
	<tr>
		<td>이름</td>
		<td>${loginInfo.name}</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>${loginInfo.id}</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td>${loginInfo.password}</td>
	</tr>
	<tr>
		<td>나이</td>
		<td>${loginInfo.age}</td>	
	</tr>
	<tr>
		<td>성별</td>
		<td>${loginInfo.gender}</td>	
	</tr>
	<tr>
		<td>생년월일</td>
		<td>${loginInfo.year}</td>
		<td>-</td>
		<td>${loginInfo.month}</td>
		<td>-</td>
		<td>${loginInfo.day}</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>${loginInfo.email}</td>
	</tr>

	<tr>
		<td>휴대폰번호</td>
		<td>${loginInfo.hp1}</td>
		<td>-</td>
		<td>${loginInfo.hp2}</td>
		<td>-</td>
		<td>${loginInfo.hp3}</td>
	</tr>
	<tr>
		<td>주소</td>
		<td>${loginInfo.add1}</td>
		<td>-</td>
		<td>${loginInfo.add2}</td>
	</tr>
	<tr>
		<td>취향</td>
		<td>${loginInfo.style}</td>
	</tr>
	<tr>
		<td>관심카테고리</td>
		<td>${loginInfo.cat}</td>
	</tr>
	<tr>
		<td>
			<input type="button" value="개인정보 수정" onClick="goUpdate(${loginInfo.num})">
		</td>
	</tr>
</table>