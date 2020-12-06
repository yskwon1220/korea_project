<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<title>hyejipage</title>

<link rel="shortcut icon" href="favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700"
	rel="stylesheet">


<link rel="stylesheet" href="<c:url value="/assets/css/V3animate.css"/>" />
<link rel="stylesheet" href="<c:url value="/assets/css/V3icomoon.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/assets/css/V3bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/assets/css/V3flexslider.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/assets/css/V3owl.carousel.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/assets/css/V3owl.theme.default.min.css"/>" />
<link rel="stylesheet" href="<c:url value="/assets/css/V3style.css"/>" />


<link rel="stylesheet"
	href="<c:url value="/assets/css/calendarstyle.css"/>" />

</head>


<body onload="renderDate()">

	<jsp:include page="../inc/headerV3.jsp" />

	<div id="page-wrapper">

		<!-- <h2 style="padding-right: 700px; margin-bottom: 50px;">예약</h2>
		<h3 style="padding-right: 400px; margin-bottom: 50px;">날짜 선택&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;시간선택</h3>
 -->
		<div class="wrapper" style="">
			<div class="calendar">
				<div class="month">
					<div class="prev" onclick="moveDate('prev')">
						<span>&#10094;</span>
					</div>
					<div>
						<h2 id="month"></h2>
						<p id="date_str"></p>
					</div>
					<div class="next" onclick="moveDate('next')">
						<span>&#10095;</span>
					</div>
				</div>
				<div class="weekdays">
					<div>Sun</div>
					<div>Mon</div>
					<div>Tue</div>
					<div>Wed</div>
					<div>Thu</div>
					<div>Fri</div>
					<div>Sat</div>
				</div>
				<div class="days"></div>
			</div>
		</div> <!-- wrapper 끝 -->

		
<div class="wrapper">

		<table class="type09" style="text-align : center; width:450px; height:70vh;">
		<thead>
		
			<tr>
				<th scope="cols">선택</th>
				<th scope="cols">예약시간</th>
				<th scope="cols">예약하기</th>
				<th scope="cols">인원수</th>
			</tr>
		
		</thead>
		<tbody>
		
			<tr>
				<td><input type="radio" name="radio" id="radio"/></td>
				<td><button id="button">05:00</button></td>
				<td>예약가능</td>
				<td>10 / 30</td>
			</tr>
			<tr>
				<td><input type="radio" name="radio" id="radio"/></td>
				<td><button id="button">07:00</button></td>
				<td>예약가능</td>
				<td>10 / 30</td>
			</tr>
			<tr>
				<td><input type="radio" name="radio" id="radio"/></td>
				<td><button id="button">09:00</button></td>
				<td>예약가능</td>
				<td>10 / 30</td>
			</tr>
			<tr>
				<td><input type="radio" name="radio" id="radio"/></td>
				<td><button id="button">11:00</button></td>
				<td>예약가능</td>
				<td>10 / 30</td>
			</tr>
			<tr>
				<td><input type="radio" name="radio" id="radio"/></td>
				<td><button id="button">15:00</button></td>
				<td>예약가능</td>
				<td>10 / 30</td>
			</tr>
			<tr>
				<td><input type="radio" name="radio" id="radio"/></td>
				<td><button id="button">17:00</button></td>
				<td>예약가능</td>
				<td>10 / 30</td>
			</tr>
			<tr>
				<td><input type="radio" name="radio" id="radio"/></td>
				<td><button id="button">19:00</button></td>
				<td>예약가능</td>
				<td>10 / 30</td>
			</tr>
			<tr>
				<td><input type="radio" name="radio" id="radio"/></td>
				<td><button id="button">21:00</button></td>
				<td>예약가능</td>
				<td>10 / 30</td>
			</tr>
			</tbody>
		</table>
		
	
</div><!-- wrapper 끝 -->

</div><!-- page_wrapper 끝 -->

<!-- 		<ol>
		<li> 당일 취소는 불가능 합니다.</li>
		<li> 스마트 예약 가능시간 24시간 가능</li>
		</ol> -->




	<jsp:include page="../inc/footerV3.jsp" />


	<script>
		var dt = new Date();
		function renderDate() {
			dt.setDate(1);
			var day = dt.getDay();
			var today = new Date();
			var endDate = new Date(dt.getFullYear(), dt.getMonth() + 1, 0)
					.getDate();

			var prevDate = new Date(dt.getFullYear(), dt.getMonth(), 0)
					.getDate();
			var months = [ "January", "February", "March", "April", "May",
					"June", "July", "August", "September", "October",
					"November", "December" ]
			document.getElementById("month").innerHTML = months[dt.getMonth()];
			document.getElementById("date_str").innerHTML = dt.toDateString();
			var cells = "";
			for (x = day; x > 0; x--) {
				cells += "<div class='prev_date'>" + (prevDate - x + 1)
						+ "</div>";
			}
			console.log(day);
			for (i = 1; i <= endDate; i++) {
				if (i == today.getDate() && dt.getMonth() == today.getMonth())
					cells += "<div class='today'>" + i + "</div>";
				else
					cells += "<div>" + i + "</div>";
			}
			document.getElementsByClassName("days")[0].innerHTML = cells;

		}

		function moveDate(para) {
			if (para == "prev") {
				dt.setMonth(dt.getMonth() - 1);
			} else if (para == 'next') {
				dt.setMonth(dt.getMonth() + 1);
			}
			renderDate();
		}
	</script>


	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>




</body>
</html>