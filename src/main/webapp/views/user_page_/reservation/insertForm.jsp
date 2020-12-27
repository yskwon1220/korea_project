<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
<body onload="document.f.user_pw.focus()">

	<div id="fh5co-page">
		<div id="fh5co-pricing-section">
			<div class="container">

				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>예약</h2>
						<p>예약 내용을 입력해주세요</p>
					</div>
				</div>

				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">

						<form name="f" id="successForm" action="success" method="post">
							<table class="type08">
								<thead>

									<tr>
										<th colspan="2" height="100">스마트 예약 가능시간 24시간 가능 <br>당일
											취소는 불가능 합니다.
										</th>
									</tr>

								</thead>
								<tbody>

									<tr>
										<td>지점</td>
										<td><input type="hidden" name="lo_no" value="${lo_no}" />
											<input type="hidden" name="type" value="${type}" /> <input
											type="text" value="${lo_name}" readonly="readonly"
											disabled="disabled" /> <input type="hidden" name="lo_name"
											value="${lo_name}" /></td>
									</tr>
									<tr>
										<td>트레이너</td>
										<td><input type="text" value="${tr_name}"
											readonly="readonly" disabled="disabled" /> <input
											type="hidden" name="tr_name" value="${tr_name}" /></td>
									</tr>
									<tr>
										<td>예약날짜</td>
										<td><input type="text" value="${resdate}"
											readonly="readonly" disabled="disabled" /> <input
											type="hidden" name="resdate" value="${resdate}" /></td>
									</tr>
									<tr>
										<td>예약시간</td>
										<td><input type="text" value="${resTime}:00"
											readonly="readonly" disabled="disabled" /> <input
											type="hidden" name="resTime" value="${resTime}" /></td>
									</tr>
									<tr>
										<td>잔여회차</td>
										<td><input type="text" value="${data.reserve_cnt}" readonly="readonly"
											disabled="disabled" /> <input type="hidden" name="reserve_cnt" value="${data.reserve_cnt}" /></td>
									</tr>
									<tr>
										<td>아이디</td>
										<td><input type="text" value="${user_id}"
											readonly="readonly" disabled="disabled" /> <input
											type="hidden" name="user_id" value="${user_id}" /></td>
									</tr>
									<tr>
										<td>이름</td>
										<td><input type="text" value="${data.user_name}"
											readonly="readonly" disabled="disabled" /> <input
											type="hidden" name="user_name" value="${data.user_name}" /></td>
									</tr>
									
									
									<tr>
										<td>비밀번호</td>
										<td><input id="pw" type="password" name="user_pw"
											value="" />
											<p style="font-size: 8px; color: red;">*비밀번호일치 시 예약을 하실 수
												있습니다.</p></td>
									</tr>
									<tr>
										<td>연락처</td>
										<td><input type="text" name="user_tel"
											value="${data.user_tel }" />
										<p style="font-size: 8px; color: red;">*연락처는 ' - ' 없이 입력하시길 바랍니다.</p></td>
									</tr>
									<tr>
										<td>내용</td>
										<td><textarea cols="22" name="content" id="content">내용을 입력해주세요</textarea></td>
									</tr>
								</tbody>
							</table>
							<br> <br> <input type="button" onclick="gogo()"
								class="btn btn-primary" value="예약하기">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="<c:url value="${path }/resource/js/jquery.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/jquery-3.5.1.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3bootstrap.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3jquery.waypoints.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3owl.carousel.min.js"/>"></script>
	<script
		src="<c:url value="${path }/resource/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3main.js"/>"></script>

	<script>
		function gogo() {
			var password = document.getElementById('pw').value;
			var userPw = '${data.user_pw}';

			if (password == userPw) {
				document.getElementById('successForm').submit();
			} else {
				alert("비밀번호가 일치하지 않습니다.");
			}
		}
	</script>

</body>
</html>