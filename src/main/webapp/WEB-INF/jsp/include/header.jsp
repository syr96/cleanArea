<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<header class="mb-3">
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
								<li><a href="/reservation/view" class="dropdown-item">예약하기</a></li>
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