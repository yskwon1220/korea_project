<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/event_detail.css"/>" />
</head>
<body>
	<title>Event</title>
</head>


<body>
<form action="../payment/payment?price=${data.get(0).e_price}&discount=${data.get(0).discount}">
	<div id="page-wrapper">
					<c:choose>
						<c:when test="${not empty sessionScope.user_id }">
							<!-- 로그인된 상태일때  -->
		<div class="fix_bar">
			지금 바로 결제하러 가기
			<a href="../payment/payment?price=${data.get(0).e_price}&discount=${data.get(0).discount}">
			<input type="button"  class="buy_btn" value="결제하기"/></a>
		</div>

						</c:when>
						<c:otherwise>
			<div class="fix_bar">
			지금 바로 결제하러 가기				
				<a href="../payment/paymentReg">
				<input type="button"  class="buy_btn" value="결제하기"/></a>
			</div>		
							
						</c:otherwise>
					</c:choose>

		<div class="tot">
			<div class="title">${data.get(0).title }</div>


			<div class="detail_main">
				<img
					src="<c:url value="${path }/resource/images/${data.get(0).detail_img1}"/>">
			</div>
			<div class="detail_main">
				<img
					src="<c:url value="${path }/resource/images/${data.get(0).detail_img2}"/>">
			</div>
			<div class="detail_main">
				<img
					src="<c:url value="${path }/resource/images/${data.get(0).detail_img3}"/>">
			</div>


		</div>

	</div>

</form>

</body>
</html>