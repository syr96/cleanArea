<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청정구역</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	<div id="wrap">
		<header>
			<div class="d-flex justify-content-between align-items-center">
				<a href="/main_view" class="text-decoration-none m-3"><h1 class="text-dark">청정구역</h1></a>
				<div class="m-3">
					<a href="#" class="text-decoration-none m-3"><span class="text-dark">오시는길</span></a>
					<a href="#" class="text-decoration-none"><span class="text-dark">공지사항</span></a>
				</div>
			</div>
			<div class="menu d-flex justify-content-center bg-info">
				<nav class="col-8">
					<ul class="nav nav-fill">
						<li class="nav-item dropdown menu_1">
							<a href="#" class="nav-link text-dark" data-bs-toggle="dropdown">예약하기</a>
							<div class="d-flex justify-content-center">
								<ul class="dropdown-menu sub_1 text-center bg-light">
									<li><a href="#" class="dropdown-item">예약하기</a></li>
									<li><a href="#" class="dropdown-item">예약조회</a></li>
									<li><a href="#" class="dropdown-item">문의하기</a></li>
								</ul>
							</div>
						</li>
						
						<li class="nav-item dropdown menu_2">
							<a href="#" class="nav-link text-dark" data-bs-toggle="dropdown">청소후기</a>
							<div class="d-flex justify-content-center">
								<ul class="dropdown-menu sub_2 text-center bg-light">
									<li><a href="#" class="dropdown-item">고객후기</a></li>
									<li><a href="#" class="dropdown-item">청소꿀팁</a></li>
								</ul>
							</div>
						</li>
						
						<li class="nav-item dropdown menu_3">
							<a href="#" class="nav-link text-dark" data-bs-toggle="dropdown">청소종류</a>
							<div class="d-flex justify-content-center">
								<ul class="dropdown-menu sub_3 text-center bg-light">
									<li><a href="#" class="dropdown-item">입주</a></li>
									<li><a href="#" class="dropdown-item">이사</a></li>
									<li><a href="#" class="dropdown-item">냉장고</a></li>
									<li><a href="#" class="dropdown-item">세탁기</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</nav>
			</div>
		</header>
		
		<section class="bg-danger box">
			
		</section>
		
		<footer class="bg-light">
			<div class="mx-3 py-3">
					<p>
						청정구역 | 대표자: 석승범 | 주소: <a href="#" class="text-decoration-none text-dark">서울특별시 노원구 한글비석로 46길 77 (상계동)</a> | 사업자등록번호: 799-52-00827
					</p>
					<p>
						전화번호: 02-937-5734 | 010-8985-2634 | 이메일: beom5735@naver.com
					</p>
					<p>
						Copyright 2022. 청정구역. All rights reserved.
					</p>
			</div>
		</footer>
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
			
		});
	</script>
</body>
</html>