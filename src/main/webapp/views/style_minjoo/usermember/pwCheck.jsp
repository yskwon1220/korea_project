<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>로그인</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
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

<script src="<c:url value="/assets/js/V3modernizr-2.6.2.min.js"/>"></script>

</head>
<body>

	<%-- <jsp:include page="../inc/headerV3.jsp" /> --%>
	<div id="page-wrapper">


<!-- Main -->
<div id="main-wrapper">
	<div class="container">
		<div id="content">

<!-- Content -->
<article>

	<h2>비밀번호확인</h2>

	<!-- 본문 들어가는 부분 -->
	<div class="row text-center">
		<!-- 가운데 정렬을 위해 -->
		<form action="pwCheckOk">

			<div class="row" style="width: 30%; float: none; margin: 0 auto">
				<div class="form-group  col">
					<label for="pw" class="">비밀번호를 입력해주세요</label> 
					<input type="password" id="pw" name="pw" class="form-control"
						maxlength="30" placeholder="비밀번호">
				</div>
			</div>

			<div class="row" style="width: 30%; float: none; margin: 0 auto">
				<div class="form-group col ">
					<input type="submit" class="btn btn-primary" value="비밀번호 확인" />
				</div>
			</div>
			<div class="row" style="width: 100%; float: right; margin: 0 auto">	
			<div class="row" style=" float: right; margin: 0 auto">	

				<div class="form-group col  ">
					<input type="button" class="btn btn-default"
						value="마이페이지로 돌아가기" onclick="location.href='myPage'" />

					<input type="button" class="btn btn-default"
						value="메인페이지로 돌아가기"
						onclick="location.href='user_page/MainV3'">
				</div>
			</div>
			</div>



		</form>
	</div>

</article>

		</div>
	</div>
</div>

	</div>


	<%-- <jsp:include page="../inc/footerV3.jsp" /> --%>


	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>
</body>
</html>