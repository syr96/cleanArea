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
			<form id="reservationForm" class="col-4">
				<h2>예약하기</h2>
				<input type="text" placeholder="이름을 입력해주세요" class="form-control mt-3" id="nameInput">
				<input type="tel" placeholder="핸드폰 번호를 입력해주세요" class="form-control mt-3" id="phoneNumberInput" maxlength="13" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}">
				<div id="notice" class="d-none"><small class="text-info">- 은 제외하고 입력해주세요</small></div>
				<input type="text" placeholder="도/시/구 만 입력해주세요.(예: 서울시 노원구)" class="form-control mt-3" id="addressInput">
				<select class="custom-select mt-3" id="cleanTypeInput">
					<option value="">-- 청소 종류 선택 --</option>
					<option value="입주">입주</option>
					<option value="에어컨">에어컨</option>
					<option value="기타">기타</option>
				</select>
				<input type="text" placeholder="날짜를 선택해주세요" class="form-control mt-3" id="dateInput">
				<select class="custom-select mt-3" id="timeInput">
					<option value="">-- 예약 시간 선택 --</option>
					
					<!-- 오전 -->
					<%	for(int i = 8; i < 12; i++) {	%>
						<option value="<%=i %>">오전 <%=i %>시</option>								
					<%	}	%>
					
					<!-- 오후 -->
					<%	for(int i = 1; i < 7; i++) {	%>
						<option value="<%=i+12 %>">오후 <%=i %>시</option>								
					<%	}	%>
					
				</select>
				
				<button type="submit" class="btn btn-block btn-info mt-3" id="reservationBtn">예약하기</button>
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
			
			$("#reservationForm").on("submit", function(e) {
				
				e.preventDefault();
				
				var name = $("#nameInput").val();
				var phoneNumber = $("#phoneNumberInput").val();
				var address = $("#addressInput").val();
				var cleanType = $("#cleanTypeInput").val();
				var date = $("#dateInput").val();
				var time = $("#timeInput").val();
				
				if(name == "") {
					alert("이름을 입력하세요");
					return;
				}
				
				if(phoneNumber == "") {
					alert("핸드폰 번호를 입력하세요");
					return;
				}
				
				if(address == "") {
					alert("주소를 입력하세요");
					return;
				}
				
				if(cleanType == "") {
					alert("청소 종류를 선택하세요");
					return;
				}
				
				if(date == "") {
					alert("날짜를 선택하세요");
					return;
				}				
				
				if(time == "") {
					alert("예약 시간을 선택하세요");
					return;
				}
				
				$.ajax({
					type:"post",
					url:"/reservation/in",
					data:{"name":name, "phoneNumber":phoneNumber, "address":address, "cleanType":cleanType, "date":date, "time":time},
					success:function(data) {
						if(data.result == "success") {
							alert("예약 완료");
							location.href = "/reservation/lookup_view";
						} else {
							alert("예약하기 실패");
						}
					},
					error:function() {
						alert("에러 발생");
					}
				});
				
			});
			
			// 핸드폰 번호 입력 시 - 입력 금지
			$("#phoneNumberInput").on("input", function() {
				$("#notice").removeClass("d-none");
			});
			
			// 핸드폰 번호 입력 시 - 자동 입력
			$("#phoneNumberInput").on("keyup", function(e) {
				
				e.preventDefault();
				
				$(this).val($(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-"));
			});
			
		});
	</script>
</body>
</html>