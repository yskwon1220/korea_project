<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>   
<!DOCTYPE html>

<html>
   <head>
      <title>FitNess Club</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" /> 

	<link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700" rel="stylesheet">

	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3animate.css"/>" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3icomoon.css"/>" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3bootstrap.css"/>" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3style.css"/>" /> 
	<link rel="stylesheet" href="<c:url value="${path }/resource/css/main.css"/>" /> 

            <script src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>


   </head>
   <body>
<jsp:include page="../inc/headerV3.jsp" />
      <div id="page-wrapper">


         <!-- Main -->
            <div id="main-wrapper">
               <div class="container">
                  <div id="content">

                     <!-- Content -->
                        <article>

                           <h2 class="info">스페셜 피트니스 3대목표</h2>

                           

                           <h3>01 회원이 운동하고 피트니스</h3>
                           
                           <p class="ex">회원님들께 운동하고 싶은 피트니스 환경을 제공 <br>하기 위해 Life Fitness, Hammer Strength, Cybex<br>
                              등 세계 최고급 머신들을 배치하고, 운동 집중력을<br> 최대치로 끌어올릴 수 있는 공간구성을 마련<br>하였습니다.</p>
                           <img class = "img" src="<c:url value="../resource/images/01.jpg"/>"/>
                           
                           
                           <h3>02 오랫동안 일하고 싶은 피트니스</h3>
                           <p class="ex">퇴직금 100%, 4대 보험 보장과 정기적인 아카데미<br>교육을 통해 직원들의 성장을 위해 투자하고
                              매년<br> 워크샵,정기산행,미스터&미스FM 선발대회 등의 <br>행사를 통해 직원들이 일하기 편한 환경을
                              제공하<br>기위해 노력합니다
                           </p>
                           <img class = "img" src="<c:url value="../resource/images/02.jpg"/>"/>
                           
                           
                           <h3>03 인정받는 피트니스</h3>
                           <p class="ex">(주)스페셜피트니스는 피트니스,피트니스 교육,피트니스<br>컨설팅 피트니스 인테리어 등 건강한 삶을 선도하<br>는 
                           기업으로서 자신감 있고 행복한 삶을 제공하는<br> 기업입니다. 고객이 안심하고 신뢰할 수 있는 올바<br>른 피트니스
                           환경을 위해 일합니다</p>
                           <img class = "img" src="<c:url value="../resource/images/03.jpg"/>"/>
                           
                        </article>

                  </div>
               </div>
            </div>
     </div>


<jsp:include page="../inc/footerV3.jsp" />
	

	<script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3main.js"/>"></script>

   </body>
</html>