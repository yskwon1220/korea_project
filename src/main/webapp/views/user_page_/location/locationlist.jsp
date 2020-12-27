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



</head>
<body>


	<div id="fh5co-page">

		<div id="fh5co-pricing-section">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>예약</h2>
						<p>서비스 이용 예약할 지점을 선택해주세요</p>
					</div>
				</div>

				<div class="row" style="margin-bottom: 100px;">
					<div class="pricing">
					
					
						<!-- <form action="typelist" method="get"> -->
						
						
							<c:forEach items="${data}" var="vo" varStatus="no">
								<div class="col-md-3 animate-box">
									<div class="price-box"
										style="width: 300px; height: 500px; margin-right: 250px;">
										<h2 class="pricing-plan">${vo.lo_name}</h2>
										<div class="price">
											<small>${vo.lo_tel}</small>
										</div>
										<img
											src="<c:url value="${path }/resource/images/${vo.lo_pic}"/>"
											alt="" width="100%" height="170px" />
										<p>${vo.lo_addr}</p>

										<a href="typelist?lo_no=${vo.lo_no}&lo_name=${vo.lo_name}"
										class="btn btn-select-plan btn-sm">Select Plan</a> 


<%-- <input type="hidden" name="lo_name" value="${vo.lo_name}">
<input type="hidden" name="lo_no" value="${vo.lo_no}">
										<input type="submit" value="select Plan"> --%>

									</div>
								</div>
							</c:forEach>
					<!-- 	</form> -->
					</div>
				</div>
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