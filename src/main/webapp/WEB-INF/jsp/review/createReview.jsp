<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기작성</title>
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
		<section class="d-flex justify-content-center">
			<article class="col-6">
				<div>
					<h2>후기작성</h2>
					<div class="border rounded mt-3">
						<div class="m-3">
							<c:forEach var="reservation" items="${reservationListById }">
								<div>
									<label>청소종류</label>
									<input type="text" class="form-control" readonly placeholder="${reservation.cleanType }">
								</div>
								<div class="mt-3">
									<fmt:formatDate var="dateTime" value="${reservation.date }" pattern="yyyy년 MM월 dd일 HH시"/>
									<label>예약날짜 및 시간</label>
									<input type="text" class="form-control" readonly placeholder="${dateTime }">
								</div>
							</c:forEach>
							<div class="mt-3">
								<label>리뷰</label>
								<textarea class="form-control w-100" rows="5" id="reviewInput"></textarea>
							</div>
							<div class="mt-3 d-flex justify-content-between">
								<input type="file" id="fileInput">
								<button type="button" class="btn btn-info" id="uploadBtn">등록하기</button>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	<script>
		$(document).ready(function() {
			
			$("#uploadBtn").on("click", function(e) {
				
				e.preventDefault();
				
				var review = $("#reviewInput").val().trim();
				
				if(review == "") {
					alert("리뷰 내용을 작성하세요");
					return;
				}
				
				var formData = new FormData();
				formData.append("review", review);
				formData.append("file", $("#fileInput")[0].files[0]);
				
				$.ajax({
					type:"post",
					url:"/review/create",
					data:formData,
					enctype:"mutipart/form-data",
					processData:false,
					contentType:false,
					success:function(data) {
						if(data.result == "success") {
							location.href = "/review/list_view";
						} else {
							alert("리뷰 작성 실패");
						}
					},
					error:function() {
						alert("에러 발생");
					}
				});
			});
		});
	</script>
</body>
</html>