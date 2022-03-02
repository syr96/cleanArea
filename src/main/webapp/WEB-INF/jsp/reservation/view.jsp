<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		<section class="d-flex justify-content-center mt-3">
			<form id="reservation">
				<div class="input-group align-items-center">
					<div class="input-group-prepend">
						<label class="input-group-text" for="nameInput">이름</label>
					</div>
					<input type="text" placeholder="이름을 입력하세요" class="form-control" id="nameInput">
				</div>
				
				<div class="input-group align-items-center mt-3">
					<div class="input-group-prepend">
						<label class="input-group-text" for="phoneNumberInput">핸드폰번호</label>
					</div>
					<input type="tel" placeholder="010-0000-0000" class="form-control" id="phoneNumberInput">
				</div>
				
				<div class="input-group align-items-center mt-3">
					<div class="input-group-prepend">
						<label class="input-group-text" for="addressInput">주소</label>
					</div>
					<input type="text" placeholder="주소를 입력하세요" class="form-control" id="addressInput">
				</div>
				
				<div class="input-group align-items-center mt-3">
					<div class="input-group-prepend">
						<label class="input-group-text" for="cleanValueInput">청소종류</label>
					</div>
					<select class="custom-select" id="cleanValueInput">
						<option selected>-- 선택 --</option>
						<option value="입주">입주</option>
						<option value="에어컨">에어컨</option>
					</select>
				</div>
				
				<div class="input-group align-items-center mt-3">
					<div class="input-group-prepend">
						<label class="input-group-text" for="dateInput">날짜선택</label>
					</div>
					<input type="text" placeholder="날짜를 선택하세요" class="form-control" id="dateInput">
				</div>
				
				<div class="input-group align-items-center mt-3">
					<div class="input-group-prepend">
						<label class="input-group-text" for="timeInput">시간선택</label>
					</div>
					<select class="custom-select" id="timeInput">
						<option selected>-- 선택 --</option>
						
						<!-- 오전 -->
						<%	for(int i = 8; i < 12; i++) {	%>
							<option value="<%=i %>">오전 <%=i %>시</option>								
						<%	}	%>
						
						<!-- 오후 -->
						<%	for(int i = 1; i < 7; i++) {	%>
							<option value="<%=i %>">오후 <%=i %>시</option>								
						<%	}	%>
						
					</select>
				</div>
				
				<button type="submit" class="btn btn-block btn-info mt-5">예약하기</button>
			</form>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	
	<script>
		$(document).ready(function() {
			$("#dateInput").datepicker({
				dateFormat:"yy-mm-dd",
				prevText: "이전 달",
				nextText: "다음 달",
				currentText: '오늘',
				dayNamesMin:['일', '월', '화', '수', '목', '금', '토'],
				yearSuffix: "년",
				monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
				showMonthAfterYear: true
			});
		});
	</script>
</body>
</html>