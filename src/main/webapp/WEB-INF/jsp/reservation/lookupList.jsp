<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약조회_신청내역</title>
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
			<div class="col-7">
				<article class="reservationList mt-5">
					<table class="table text-center">
						<thead>
							<tr>
								<th>번호</th>
								<th>신청날짜</th>
								<th>신청시간</th>
								<th>주소</th>
								<th>청소종류</th>
								<th>후기작성</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>2022.02.03</td>
								<td>오후 3시</td>
								<td>서울시 노원구</td>
								<td>입주</td>
								<td><a href="#" class="btn btn-info btn-sm">후기쓰기</a></td>
							</tr>
						</tbody>
					</table>
				</article>
			</div>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>