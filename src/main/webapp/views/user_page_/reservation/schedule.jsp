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

		<div id="fh5co-pricing-section2">
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

				<div class="row">
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
										<td><input type="radio" name="restime" value="05" /></td>
										<td><button id="button">05:00</button></td>
										<td>예약가능</td>
										<td id="time_5">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="restime" value="07" /></td>
										<td><button id="button">07:00</button></td>
										<td>예약가능</td>
										<td id="time_7">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="restime" value="09" /></td>
										<td><button id="button">09:00</button></td>
										<td>예약가능</td>
										<td id="time_9">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="restime" value="11" /></td>
										<td><button id="button">11:00</button></td>
										<td>예약가능</td>
										<td id="time_11">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="restime" value="15" /></td>
										<td><button id="button">15:00</button></td>
										<td>예약가능</td>
										<td id="time_15">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="restime" value="17" /></td>
										<td><button id="button">17:00</button></td>
										<td>예약가능</td>
										<td id="time_17">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="restime" value="19" /></td>
										<td><button id="button">19:00</button></td>
										<td>예약가능</td>
										<td id="time_19">/ 30</td>
									</tr>
									<tr>
										<td><input type="radio" name="restime" value="21" /></td>
										<td><button id="button">21:00</button></td>
										<td>예약가능</td>
										<td id="time_21">/ 30</td>
										<td><input id="hidden_real" type="text" name="hidden_resdate">
										</td>
									</tr>
									<tr>
										<td><input type="submit" value="전송"></td>
									</tr>
								</tbody>
							</table>

						</form>
					</div>
				</div>



			</div>


			<script>
				var dt = new Date();
				//Date 생성
				function renderDate() {
					dt.setDate(1);
					//시작은 1
					var day = dt.getDay();
					//Day
					var today = new Date();
					//오늘을 표현하기 위한 변수 today
					var endDate = new Date(dt.getFullYear(), dt.getMonth() + 1,0).getDate();
					//마지막날짜
					var prevDate = new Date(dt.getFullYear(), dt.getMonth(), 0).getDate();
					// 이전
					var months = [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ]
					// 월 을 표현하기 위한 배열을 만든다 
					
					document.getElementById("month").innerHTML = months[dt.getMonth()];
					document.getElementById("date_str").innerHTML = dt.toDateString();
					
					var cells = "";
					for (x = day; x > 0; x--) {
						cells += "<div class='prev_date'>" + (prevDate - x + 1)+ "</div>";
					}
					
					for (i = 1; i <= endDate; i++) {
						//for문을 돈다. i는 1부터 마지막 날짜(31)까지 증가하면서

						var ee = "'" + dt.getFullYear() + "_"+ (dt.getMonth() + 1) + "_" + i + "'"
						//날짜 형태는 yyyy_M_d 
						
						if (i == today.getDate() && dt.getMonth() == today.getMonth())
							cells += "<div class='today' onclick=resAjaxGo("+ ee + ")>" + i + "</div>";
							// 오늘날짜는 요롷게 ( 색깔 )
						else
							cells += "<div onclick=resAjaxGo(" + ee + ")>" + i+ "</div>";
						    // 다른 날짜는 요롷게

					}
					document.getElementsByClassName("days")[0].innerHTML = cells;

				}

				function moveDate(para) {
					if (para == "prev") {
						dt.setMonth(dt.getMonth() - 1);
						// 이전 달로 이동하자
					} else if (para == 'next') {
						dt.setMonth(dt.getMonth() + 1);
						//다음 달로 이동하자
					}
					renderDate();
				}
				

				function resAjaxGo(dt) {
					$
							.ajax({
								url : '../../resAjax/reservation/timecnt?lo_no=${lo_no}&resdateStr='+ dt,
								//url 주소 !!!!!!
								dataType : 'json',
								//제이슨 형태 ㅜㅜ
								success : function(data) {
									//성공 시
									$("#hidden_real").val(data[5].resdate);
									//내가 선택한 날짜를 뽑기 위한 input type hidden id임
								for (i in data) {
										console.log(i, data[i])
										//for문을 돌면서 해당 데이터를 뽑는다

										$("#time_" + i).html(data[i].nowCnt + " / 30")
										//현재 인원을 표현한다. id 명은 time_으로 시작함
									}
								},
								error : function(e) { 
									///실패 리스너
									alert(e.responseText);
									///에러메세지
								}
							});
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