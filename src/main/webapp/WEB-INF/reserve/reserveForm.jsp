<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./../common/common.jsp" %>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	
	var day, time, num;
	
	function daySelect(d, n) {
		day = d;
		num = n;
		//alert(d);
		if(time != null) {
			getStock(day, time, num);
		}
	}

	function timeSelect(t) {
		time = t;
		//alert(t);
		if(day != null) {
			getStock(day, time, num);
		}
	}
	
	function getStock(d, t, n) {
		//alert(d+"/"+t+"/"+n);
		$.ajax({
			url : "check.re",
			type : "get",
			data : ({
				"pnum" : n,
				"oday" : d,
				"otime" : t
			}),
			success : function(data){
				if($.trim(data) > 0) {
					//alert("주문 가능");
					$("#reserveSubmit").html("수량 :	<input type='number' name='oqty' value=1 max='"+data+"' min='1'><br><br><input type='submit' value='장바구니 추가'>");
				} else {
					$("#reserveSubmit").html("");
					alert("주문 불가능합니다.");
				}
			}
		});
	}
	
</script>

reserveForm.jsp<br>

<table border="1">
	<tr>
		<td rowspan="5">
			<img src="<%=request.getContextPath()%>/resources/${exhi.img }" width="150px" height="150px">
		</td>
		<th>행사명</th>
		<td>${exhi.name }</td>
	</tr>	
	<tr>
		<th>행사기간</th>
		<td>
			<fmt:parseDate var="date1" value="${exhi.start_period}" pattern="yyyy-MM-dd" />
			<fmt:parseDate var="date2" value="${exhi.end_period}" pattern="yyyy-MM-dd" />
			<fmt:formatDate value="${date1}"/>~<fmt:formatDate value="${date2}"/>
		</td>
	</tr>	
	<tr>
		<th>행사시간</th>
		<td>${exhi.start_time}:00~${exhi.end_time}:00</td>
	</tr>	
	<tr>
		<th>장소</th>
		<td>${exhi.place}</td>
	</tr>
	<tr>
		<th>입장료</th>
		<td>${exhi.price }</td>
	</tr>
	<tr>
		<td colspan="3">
			** 일자와 시간을 입력해주세요!<br>
			<form action="add.re" method="post">
				<input type="hidden" name="pnum" value="${exhi.num}"><br>
				관람 일자 : 
				<input type="date" name="oday" min="<fmt:formatDate value="${date1}" pattern="yyyy-MM-dd"/>"
				 max="<fmt:formatDate value="${date2}" pattern="yyyy-MM-dd"/>"
				 onChange="return daySelect(oday.value, ${exhi.num})" ><br>
				<br>
				관람 시간 : 
				<select name="otime" onchange="return timeSelect(otime.value)">
					<option value=""> 선택하세요.
					<c:forEach var="time" begin="${exhi.start_time}" end="${exhi.end_time}">
						<option value="${time}"> ${time}: 00
					</c:forEach>
				</select><br>
				<br>
				<!-- 일자와 시간 입력하면 여부에 따라 아래 진행 -->
				<div id="reserveSubmit">
				</div>
			</form>
		</td>
	</tr>
</table>

