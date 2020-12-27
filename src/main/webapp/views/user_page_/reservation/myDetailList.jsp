<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
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
<!-- <link rel="shortcut icon" href="favicon.ico"> -->
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />

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
<body>
	<div id="fh5co-page">

		<div id="fh5co-pricing-section">
			<div class="container">


				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>나의 예약 조회</h2>
						<p>예약 내역입니다.</p>
					</div>
				</div>

				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">

						<table class="type08">
							<thead>

								<tr>
									<th colspan="2" style="height: 75px;">예약정보</th>
								</tr>

							</thead>
							<tbody>
								<c:set var="rvo" value="${data}" />
								<tr>
									<td>예약번호</td>
									<td>${rvo.re_no}</td>
								</tr>
								<tr>
									<td>지점번호</td>
									<td>${rvo.lo_no }</td>
								</tr>
								<tr>
									<td>지점명</td>
									<td>${rvo.lo_name }</td>
								</tr>
								<tr>
									<td>트레이너</td>
									<td>${rvo.tr_name }강사</td>
								</tr>
								<tr>
									<td>선택</td>
									<td>${rvo.type }
									<fmt:formatDate value="${rvo.resdate }"
											pattern="yyyy-MM-dd (E)" var="write_dt" />
									</td>
								</tr>

								<tr>
									<td>예약 시간</td>
									<td>${rvo.resTime }:00</td>
								</tr>
								<tr>
									<td>성함</td>
									<td>${rvo.user_name}</td>
								</tr>
								<tr>
									<td>연락처</td>
									<td>${rvo.user_tel }</td>
								</tr>
								<tr>
									<td>내용</td>
									<td>${rvo.content }</td>
								</tr>
								
							</tbody>
						</table>
						<br> <br>

						<!-- 지난 날짜는 버튼을 숨긴다. -->
						<c:if test="${today <= write_dt}">
							<a href="deleteForm?re_no=${rvo.re_no}&lo_no=${rvo.lo_no}&user_id=${rvo.user_id}&resdate=<fmt:formatDate value='${rvo.resdate}' pattern="yyyy_M_d" />&resTime=${rvo.resTime}" class="btn btn-primary">예약취소</a>
						</c:if>

						&nbsp;&nbsp;&nbsp;&nbsp; <a class="btn btn-primary" href="javascript:history.back();" >되돌아가기</a>

					</div>
				</div>


			</div>
		</div>



	</div>


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
</body>
</html>