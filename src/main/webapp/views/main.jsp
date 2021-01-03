<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>FitNess Club</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="shortcut icon" href="favicon.ico">
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

<script
	src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>

</head>
<body>
	<jsp:include page="inc/headerV3.jsp" />
	<div id="fh5co-page">
		<div class="container"></div>
		<aside id="fh5co-hero" class="js-fullheight">
			<div class="flexslider js-fullheight">
				<ul class="slides">
					<c:forEach items="${data_33 }" var="sm" begin="0" end="5">
						<li style="background-image: url(../resource/images/${sm.image});">
							<div class="overlay-gradient"></div>
							<div class="container">
								<div
									class="col-md-10 col-md-offset-1 text-center js-fullheight slider-text">
									<div class="slider-text-inner">
										<h2>${sm.content_1 }</h2>
										<p style="color: white; font-weight: bold">${sm.content_2 }</p>
									</div>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</aside>

		<div id="fh5co-services-section">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>Fitness Club 운영철칙</h2>
						<p>안전하고 쾌적한 운동을 위한 환경과 친절한 서비스로 보답하겠습니다.</p>
					</div>
				</div>
				<div class="row">
					<c:forEach items="${data_44 }" var="sm" begin="0" end="5">
						<div class="col-md-4 animate-box">
							<div class="services">

								<div class="desc">
									<h3>${sm.title }</h3>
									<p>${sm.content }</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div id="fh5co-work-section" class="fh5co-light-grey-section">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>Fitness Club Notice</h2>
						<hr>
						<p>Fitness Club 새로운 소식을 만나볼 수 있습니다.</p>
					</div>
				</div>
				<div class="row">
					<c:forEach items="${data }" var="sm" begin="0" end="5">
						<input type="hidden" name="notice_no" value="${sm.notice_no }">
						<div class="col-md-4 animate-box">
							<a
								href="/user_page_/notice/noticedetail?notice_no=${sm.notice_no }"
								class="item-grid text-center">
								<div class="v-align">
									<div class="v-align-middle">
										<h3 class="title"></h3>
										<h3 class="title">${sm.title }</h3>
									</div>
									<h5 class="date">
										<span><fmt:formatDate value="${sm.regdate }"
												pattern="yy-MM-dd HH:mm" /></span>
									</h5>
								</div>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		      <div id="fh5co-blog-section" class="fh5co-light-grey-section">
         <div class="container">
            <div class="row">
               <div
                  class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
                  <h2>이용후기</h2>
                  <hr>
                  <p>FitNess Club 회원님들의 실제 이용후기입니다.</p>
               </div>
            </div>
            <div class="row">
               <c:forEach items="${data_22 }" var="sm" begin="0" end="2">
                  <input type="hidden" name="review_no" value="${sm.review_no }">
                  <div class="col-md-4 col-sm-4 animate-box">
                     <a
                        href="/user_page_/review/review_detail?review_no=${sm.review_no }"
                        class="item-grid">
                        <div class="image"
                           style="background-image: url(${path}/upup/${sm.review_file_name})"></div>
                        <div class="v-align">
                           <div class="v-align-middle">
                              <h3 class="title">${sm.title }</h3>
                              <h5 class="date">
                                 <span><fmt:formatDate value="${sm.regdate }"
                                       pattern="yy-MM-dd HH:mm" /></span>
                              </h5>
                              <p>${sm.content }</p>
                           </div>
                        </div>
                     </a>
                  </div>
               </c:forEach>
               <div class="col-md-12 text-center animate-box">
                  <p>
                     <a href="/user_page_/review/reviewlist"
                        class="btn btn-primary with-arrow">더 보기 <i
                        class="icon-arrow-right"></i>
                     </a>
                  </p>
               </div>
            </div>
         </div>
      </div>

   </div>


	<jsp:include page="inc/footerV3.jsp" />


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