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
<body>
	<div id="fh5co-page">

		<div id="fh5co-pricing-section">
			<div class="container">


				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>나의 예약 조회</h2>
						<p>예약 내역입니다.</p>
						<p>예약 순서대로 상단에 노출 됩니다.</p>
					</div>
				</div>

				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">


						<table class="type08">

							<thead>
								<tr>
									<th>예약번호</th>
									<th>예약지점</th>
									<th>예약날짜</th>
									<th>상세보기</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${data }" var="rvo" varStatus="no">

									<tr>
										<td>${rvo.re_no }</td>
										<td>${rvo.lo_name }</td>
										<td><fmt:formatDate value="${rvo.resdate }"
												pattern="yy-MM-dd (E)" /></td>
										<td><a href="myDetailList?re_no=${rvo.re_no}">클릭</a></td>
									</tr>

								</c:forEach>


								<c:if test="${empty data}">
									<tr>
										<td colspan="4">리스트가 없습니다.</td>
									</tr>
								</c:if>
								
							</tbody>
						</table>

						<br> <br>
						 <a href="../location/locationlist"
							class="btn btn-primary">새 예약 하러가기</a>&nbsp;&nbsp;

						<c:if test="${!empty data}">
							<a href="deleteForm2?user_id=${user_id}" class="btn btn-primary">환불
								하기</a>
						</c:if>
						<c:if test="${empty data}">
							<a href="../membership/membership?user_id=${user_id}" class="btn btn-primary">이용권 구매하기</a>
						</c:if>

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