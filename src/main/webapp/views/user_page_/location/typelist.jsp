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
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link
	href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700"
	rel="stylesheet">

<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3animate.css"/>" />
<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3icomoon.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3style.css"/>" />


</head>
<body>

	<div id="fh5co-page">

		<div id="fh5co-pricing-section">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>예약</h2>
						<p>PT / 헬스 선택해주세요</p>
					</div>
				</div>
				<div class="row">
					<div class="pricing">

						<div class="col-md-3 animate-box">
							<div class="price-box" style="width:300px; height:500px; margin-right:500px;">
								<h2 class="pricing-plan" >PT</h2>
								<img src="<c:url value="${path }/resource/images/fit02.jpg"/>"alt="" width="100%" height="250px" />
								<p>there live the blind texts.
								</p>
								<a href="../trainer/trainerlist?lo_no=${data.lo_no}&lo_name=${data.lo_name}&type=pt" class="btn btn-select-plan btn-sm">Select Plan</a>
							</div>
						</div>
 						<div class="col-md-3 animate-box" >
							<div class="price-box" style="width:300px; height:500px; margin-right:500px;">
								<h2 class="pricing-plan">Health</h2>
								<img src="<c:url value="${path }/resource/images/fit01.jpg"/>"alt="" width="100%" height="250px" />

								<p>there live the blind texts.
								</p>
								<a href="../reservation/schedule?lo_no=${data.lo_no}&lo_name=${data.lo_name}&type=health" class="btn btn-select-plan btn-sm">Select Plan</a>
							</div>
						</div> 

					</div>
				</div>
			</div>
		</div>

	</div>


<%--  <c:forEach items="${data }" var="data">
 	<table>
 		<tr>
 			<td>${data.no }</td>
 			<td>${data.lo_name}</td>
 		</tr>
 	</table>
 </c:forEach> --%>
<script src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3main.js"/>"></script>

</body>
</html>