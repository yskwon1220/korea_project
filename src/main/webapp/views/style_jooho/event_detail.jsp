<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="shortcut icon" href="favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700"
	rel="stylesheet">

	<link rel="stylesheet" href="<c:url value="/assets/css/V3animate.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3icomoon.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3bootstrap.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3flexslider.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3owl.carousel.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3owl.theme.default.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3style.css"/>" /> 
<link rel="stylesheet" href="<c:url value="/assets/css/event.css"/>" />

<%-- <link rel="stylesheet" href="<c:url value="/assets/css/main.css"/>" /> --%>

<script src="../assets/js/V3modernizr-2.6.2.min.js"></script>
<body>


	<title>Insert title here</title>
</head>


<body>
	<div id="page-wrapper">

		<jsp:include page="../inc/headerV3.jsp" />

		<div class="fix_bar">
			지금 바로 결제하러 가기
			<button name="buy" class="buy_btn">구매하기</button>
		</div>


		<div class="tot">


			<div class="detail_main">
				<img src="../images/fit02.jpg">
			</div>
			<div class="detail_main">
				<img src="../images/fit03.jpg">
			</div>
			<div class="detail_main">
				<img src="../images/fit04.jpg">
			</div>

		</div>

     </div>


<jsp:include page="../inc/footerV3.jsp" />



<%-- 	<script src="<c:url value="/assets/js/jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/jquery.dropotron.min.js"/>"></script>
	<script src="<c:url value="/assets/js/browser.min.js"/>"></script>
	<script src="<c:url value="/assets/js/breakpoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/util.js"/>"></script>
	<script src="<c:url value="/assets/js/main.js"/>"></script> --%>
	
	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>
</body>
</html>