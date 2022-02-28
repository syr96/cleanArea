<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청정구역</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		<section class="d-flex justify-content-center">
			
			<article class="banner col-6 m-3">
				<img src="/static/image/1_main1.jpg" id="bannerImage">
				<!-- 슬라이드되는 버튼 생성 필요, 각 이미지 클릭 시 해당하는 페이지로 이동 -->
			</article>
			
			<article class="reservation d-flex align-items-center m-3">
				<div class="text-center">
					<div>
						<p>청소, 방역, 생활수리 전문</p>
						<p>청정구역 입니다</p>
					</div>
					<a href="/reservation/view" class="btn btn-info btn-block">실시간 예약하기</a>
				</div>
			</article>
			
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	
	<script>		
		$(document).ready(function() {
			
			$(".menu_1").on("mouseover", function() {
				$(".sub_1").slideDown();
			});
			
			$(".menu_1").on("mouseleave", function() {
				$(".sub_1").hide();
			});
			
			$(".menu_2").on("mouseover", function() {
				$(".sub_2").slideDown();
			});
			
			$(".menu_2").on("mouseleave", function() {
				$(".sub_2").hide();
			});
			
			$(".menu_3").on("mouseover", function() {
				$(".sub_3").slideDown();
			});
			
			$(".menu_3").on("mouseleave", function() {
				$(".sub_3").hide();
			});
			
			var bannerList = ["/static/image/1_main1.jpg", "/static/image/1_main2.jpg", "/static/image/1_main3.jpg"];
			var currentImageIndex = 0;
			
			setInterval(function() {
				$("#bannerImage").attr("src", bannerList[currentImageIndex]);
				currentImageIndex++;
				
				if(currentImageIndex == bannerList.length) {
					currentImageIndex = 0;
				}
			}, 3000);
		});
	</script>
</body>
</html>