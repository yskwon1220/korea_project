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
								<c:forEach items="${data.voArr }" var="sm">
									<tr>
										<td>${sm.re_no}</td>
										<td>${sm.lo_name}</td>
										<td><fmt:formatDate value="${sm.resdate}"
												pattern="yy-MM-dd (E)" /></td>
										<td><a href="myDetailList?re_no=${sm.re_no}">클릭</a></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>

					</div>
					<div class="row">
						<div
							class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
							<ul class="pagination">
								<c:if test="${data.startPage>1 }">
									<a href="?nowPage=${startPage-1 }"><span>«</span></a>
								</c:if>
								<c:forEach begin="${data.startPage }" end="${data.endPage }"
									step="1" var="i">
									<c:choose>
										<c:when test="${data.nowPage==i }">[${i }]</c:when>
										<c:otherwise>
											<a href="?nowPage=${i }">${i }</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:if test="${data.endPage<data.lastPage }">
									<a href="?nowPage=${data.endPage+1 }"> <span>»</span>
									</a>
								</c:if>
							</ul>
						</div>
					</div>
					<br> <br> <a href="../location/locationlist">새 예약
						하러가기</a>

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