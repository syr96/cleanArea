<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약조회</title>
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
			<div class="col-4">
				<article class="reservationConfirmBox">
					<form id="reservationConfirm" method="get" action="/reservation/lookup_list">
						<h2>예약조회</h2>
						<input type="text" placeholder="이름을 입력해주세요" class="form-control mt-3" id="nameConfirmInput" name="name">
						<input type="tel" placeholder="핸드폰 번호를 입력해주세요" class="form-control mt-3" id="phoneNumberConfirmInput" name="phoneNumber" maxlength="13" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}">
						<div id="notice" class="d-none"><small class="text-info">- 은 제외하고 입력해주세요</small></div>
						
						<button type="submit" class="btn btn-block btn-info mt-3" id="reservationConfirmBtn">조회하기</button>
					</form>
				</article>
			</div>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	<script>
		$(document).ready(function(){
			
			$("#reservationConfirm").on("submit", function() {
				var name = $("#nameConfirmInput").val();
				var phoneNumber = $("#phoneNumberConfirmInput").val();
				
				if(name == "") {
					alert("이름을 입력하세요");
					return false;
				}
				
				if(phoneNumber == "") {
					alert("핸드폰 번호를 입력하세요");
					return false;
				}
			});
			
			// 핸드폰 번호 입력 시 - 입력 금지
			$("#phoneNumberConfirmInput").on("input", function() {
				$("#notice").removeClass("d-none");
			});
			
			// 핸드폰 번호 입력 시 - 자동 입력
			$("#phoneNumberConfirmInput").on("keyup", function(e) {
				
				e.preventDefault();
				
				$(this).val($(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-"));
			});
		});
	</script>
</body>
</html>