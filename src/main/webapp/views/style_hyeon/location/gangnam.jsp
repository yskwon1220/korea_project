<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>

<html>
   <head>
      <title>강남소개</title>
    <meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" /> 
<link rel="shortcut icon" href="favicon.ico">
	<link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700" rel="stylesheet">

	<link rel="stylesheet" href="<c:url value="/assets/css/V3animate.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3icomoon.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3bootstrap.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3flexslider.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3owl.carousel.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3owl.theme.default.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3style.css"/>" /> 
	<link rel="stylesheet" href="<c:url value="/assets/css/main.css"/>" />
            <script src="<c:url value="/assets/js/V3modernizr-2.6.2.min.js"/>"></script>

   </head>
   <body>
<jsp:include page="../../inc/headerV3.jsp" />
      <div id="page-wrapper">

         
         <!-- Main -->
            <div id="main-wrapper">
               <div class="container">
                  <div id="content">
                     
                     <!-- Content -->
                                             <section id="banner">
            <div class="slideList">
                <div class="slideImg">
                    
                    <img src="http://www.fitness-fm.com/img/s1.jpg" style="width: 100%; height: 300px; display: inline-block;">
                </div>
                <div class="slideImg">
                    
                     <img src="http://www.fitness-fm.com/img/s5.jpg"  style="width: 100%; height: 300px; display: inline-block;">
                </div>
                <div class="slideImg">
                    
                     <img src="http://www.fitness-fm.com/img/s6.jpg"  style="width: 100%; height: 300px; display: inline-block;">
                </div>
            </div>
        </section>
        <p class= "loca">강남점</p>
        <h3 class="ex1">상세설명</h3>
        <hr class="hr">
        <p class="ex">
        1. 약 300여 평 강남역 최고 시설로 오픈한 스페셜피트니스 강남점은 헬스, 요가, 필라테스, 줌바 등 각종 G.X를 갖춘 대규모 종합 피트니스센터입니다. <br />
		2. 신세대 기호에 맞춘 젊고 세련된 감각의 최신식 인테리어로 오픈하였습니다.<br />
		3. 약 30여 종의 유산소 기구, 40여 종의 최고급 운동시설이 준비되어 있습니다.<br />
		　*웨이트머신 브랜드 : 해외 최고급 테크노짐 머신 풀세트<br />
		4. 넓고 쾌적한 샤워시설, 휴게실 등 다양한 부대시설을 제공합니다.<br />
		5. 평일 24시간, 연중무휴 오픈으로 원하는 시간에 예약하여 이용하실 수 있습니다.<br />
		6. 체성분 분석기를 활용하여 전문강사진이 과학적으로 운동 지도해드립니다.<br />
		
        
        
        </p>
                     
                     
                     
                        <article>
                           <p class= "loca">오시는 길</p>
                           								<div id="map" style="width:100%;height:450px; margin: 0 auto;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=62fb6fc3c9bffc549b33f7284c140232"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.498058950614045, 127.02762535908917), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.49474941578899, 127.03014089953787); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
<br />                           
                           
                           
                           
                        </article>

                  </div>
               </div>
            </div>
            </div>

<jsp:include page="../../inc/footerV3.jsp" />
	

	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>
	
	<script src="<c:url value="/assets/js/slide.js"/>"></script>
   </body>
</html>