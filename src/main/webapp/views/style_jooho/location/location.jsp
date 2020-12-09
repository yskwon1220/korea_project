<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>위치소개</title>
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
<link rel="stylesheet" href="<c:url value="/assets/css/main.css"/>" />
<script src="<c:url value="/assets/js/V3modernizr-2.6.2.min.js"/>"></script>

</head>
<body>
	<jsp:include page="inc/headerV3.jsp" />
	<div id="page-wrapper">


		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div id="content" >

					<!-- Content -->

					<p class="loca">스페셜피트니스 위치</p>
					<div id="map" style="width:100%;height:400px;"></div>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=62fb6fc3c9bffc549b33f7284c140232"></script>
						<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						    mapOption = { 
						        center: new kakao.maps.LatLng(37.53595228710771, 127.13131128419553), // 지도의 중심좌표
						        level: 9 // 지도의 확대 레벨
						    };
						
						var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
						 
						// 버튼을 클릭하면 아래 배열의 좌표들이 모두 보이게 지도 범위를 재설정합니다 
						var points = [
						    new kakao.maps.LatLng(37.53595228710771, 127.13131128419553),
						    new kakao.maps.LatLng(37.498058950614045, 127.02762535908917),
						    new kakao.maps.LatLng(37.55935624471244, 126.84573498419628)
						];
						
						// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
						var bounds = new kakao.maps.LatLngBounds();    
						
						var i, marker;
						for (i = 0; i < points.length; i++) {
						    // 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
						    marker =     new kakao.maps.Marker({ position : points[i] });
						    marker.setMap(map);
						    
						    // LatLngBounds 객체에 좌표를 추가합니다
						    bounds.extend(points[i]);
						}
						
						function setBounds() {
						    // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
						    // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
						    map.setBounds(bounds);
						}
						</script>
				</div>
				
					<ul>
						<li class="_9wicf" data-loc_plc-doc-id="1131800410">
							<div class="_75bjI">
								<div class="_2LKql">
									
									<mark>스페셜 피트니스</mark> 강남점</a><span class="_3ZgLm"></span>
								</div>
								<div class="_1qN5M"><span class="_3Ru_R">02-599-5747   서울 강남구 강남대로78길 8 (역삼동) 한국빌딩 B2층</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value="/user_page/style_hyeji/resSystem.jsp"/>" class="_3Ru_R " role="button"> 예약
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value="/style_jooho/gangnam.jsp"/>" class="_3Ru_R " role="button"> 상세보기
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</a>
								</div>
							</div>	
						</li>
						
						<li class="_9wicf" data-loc_plc-doc-id="1131800410">
							<div class="_75bjI">
								<div class="_2LKql">
									
									<mark>스페셜 피트니스</mark> 강서점</a><span class="_3ZgLm"></span>
								</div>
								<div class="_1qN5M"><span class="_3Ru_R">02-599-4747   강서구 공항대로41길 34 5층</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_self" class="_3Ru_R " role="button"> 예약
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value="/style_jooho/gangseo.jsp"/>" class="_3Ru_R " role="button"> 상세보기
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</a>
								</div>
							</div>	
						</li>
						
						<li class="_9wicf" data-loc_plc-doc-id="1131800410">
							<div class="_75bjI">
								<div class="_2LKql">
									
									<mark>스페셜 피트니스</mark> 강동점</a><span class="_3ZgLm"></span>
								</div>
								<div class="_1qN5M"><span class="_3Ru_R">02-599-3747  강동구 천호대로56길 8 2층</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_self" class="_3Ru_R " role="button"> 예약
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value="/style_jooho/gangseo.jsp"/>" class="_3Ru_R " role="button"> 상세보기
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</a>
								</div>
							</div>	
						</li>
						
						
					
					
					</ul>
				
			</div>
		</div>
	</div>


	<jsp:include page="inc/footerV3.jsp" />


	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>

</body>
</html>