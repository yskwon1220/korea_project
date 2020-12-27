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
		<div id="fh5co-pricing-section" style="height:1500px;"><!-- 이곳이 높이... -->
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>예약</h2>
						${lo_name}을 선택하셨습니다.
						<p>PT강사를 선택해주세요.</p>
					</div>
				</div>
				<div class="row">
					<div class="pricing">
					
						<c:forEach items="${data}" var="vo" varStatus="no">
							<div class="col-md-3 animate-box">
								<div class="price-box"  style="width:300px; height:550px;">
									<h2 class="pricing-plan">${vo.tr_name} 강사</h2>
									 <img src="<c:url value="${path }/resource/images/gangsa/${vo.tr_pic}"/>" alt=""
										style="border-radius: 50px;" width="100%" height="220px" /> 
									    <p >${vo.contentTrans}</p>  
									<a  href="../reservation/schedule?lo_no=${vo.lo_no}&lo_name=${lo_name}&tr_name=${vo.tr_name}&type=${type}" class="btn btn-select-plan btn-sm">Select
										Plan</a>
								
								</div>
							</div>
						</c:forEach>
						
					</div>
					
				</div>
			</div>
		</div>
	</div>

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