<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>FitNess Club</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<link
	href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700"
	rel="stylesheet">

<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3animate.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3icomoon.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3style.css"/>" />

<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/calendarstyle.css"/>" />

</head>

<body onload="renderDate()">

	<div id="fh5co-page">

		<div id="fh5co-pricing-section">
			<div class="container">


				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>예약</h2>
						<p>원하는 날짜와 시간을 선택해주세요</p>
					</div>
				</div>

				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">

						<!-- 	<div class="wrapper1"> -->
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
							<div class="days" id="days"></div>



						</div>
					</div>
				</div>

				<div class="row" style="margin-bottom:30px;">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">



						<form action="insertForm" action="post">


							<input type="hidden" name="lo_no" value="${lo_no}" /> <input
								type="hidden" name="lo_name" value="${lo_name}" /> <input
								type="hidden" name="tr_name" value="${tr_name}" /> <input
								type="hidden" name="type" value="${type}" />
							<table class="type09">
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
										<td><input type="radio" name="resTime" value="05" /></td>
										<td><button id="button">05:00</button></td>
										<td>예약가능</td>
										<td id="time_5">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="resTime" value="07" /></td>
										<td><button id="button">07:00</button></td>
										<td>예약가능</td>
										<td id="time_7">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="resTime" value="09" /></td>
										<td><button id="button">09:00</button></td>
										<td>예약가능</td>
										<td id="time_9">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="resTime" value="11" /></td>
										<td><button id="button">11:00</button></td>
										<td>예약가능</td>
										<td id="time_11">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="resTime" value="15" /></td>
										<td><button id="button">15:00</button></td>
										<td>예약가능</td>
										<td id="time_15">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="resTime" value="17" /></td>
										<td><button id="button">17:00</button></td>
										<td>예약가능</td>
										<td id="time_17">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="resTime" value="19" /></td>
										<td><button id="button">19:00</button></td>
										<td>예약가능</td>
										<td id="time_19">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="resTime" value="21" /></td>
										<td><button id="button">21:00</button></td>
										<td>예약가능</td>
										<td id="time_21">/ 30</td>

									</tr>
								</tbody>
							</table>
										<input id="hidden_real" type="hidden" name="resdate">
										<input type="submit" value="다음">

						</form>
					</div>
				</div>



			</div>


			<script>
				var dt = new Date();
				function renderDate() {
					dt.setDate(1);
					var day = dt.getDay();
					var today = new Date();
					var endDate = new Date(dt.getFullYear(), dt.getMonth() + 1,
							0).getDate();

					var prevDate = new Date(dt.getFullYear(), dt.getMonth(), 0)
							.getDate();
					var months = [ "1월", "2월", "3월", "4월", "5월", "6월", "7월",
							"8월", "9월", "10월", "11월", "12월" ]
					document.getElementById("month").innerHTML = months[dt
							.getMonth()];
					document.getElementById("date_str").innerHTML = dt
							.toDateString();
					var cells = "";
					for (x = day; x > 0; x--) {
						cells += "<div class='prev_date'>" + (prevDate - x + 1)
								+ "</div>";
					}
					
					
					for (i = 1; i <= endDate; i++) {

						var ee = "'" + dt.getFullYear() + "_"
								+ (dt.getMonth() + 1) + "_" + i + "'"
						if (i == today.getDate()
								&& dt.getMonth() == today.getMonth())
							cells += "<div class='today' onclick=resAjaxGo("
									+ ee + ")>" + i + "</div>";
						else
							cells += "<div onclick=resAjaxGo(" + ee + ")>" + i
									+ "</div>";

					}
					document.getElementsByClassName("days")[0].innerHTML = cells;



				}

				function resAjaxGo(dt) {
					$
							.ajax({
								url : '../../resAjax/reservation/timecnt?lo_no=${lo_no}&resDateStr='
										+ dt,
								dataType : 'json',
								success : function(data) {
									$("#hidden_real").val(data[5].resDate);
								for (i in data) {
										console.log(i, data[i])

										$("#time_" + i).html(
												data[i].nowCnt + " / 30")
									}

								},

								error : function(e) { ///실패 리스너
									alert(e.responseText);///에러메세지

									//console.log(e);
								}

							});

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

			<script
				src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>
			<script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
			<script
				src="<c:url value="${path }/resource/js/V3jquery.easing.1.3.js"/>"></script>
			<script
				src="<c:url value="${path }/resource/js/V3bootstrap.min.js"/>"></script>
			<script
				src="<c:url value="${path }/resource/js/V3jquery.waypoints.min.js"/>"></script>
			<script
				src="<c:url value="${path }/resource/js/V3owl.carousel.min.js"/>"></script>
			<script
				src="<c:url value="${path }/resource/js/V3jquery.flexslider-min.js"/>"></script>
			<script src="<c:url value="${path }/resource/js/V3main.js"/>"></script>
</body>
</html>