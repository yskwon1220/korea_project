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


	<title>Insert title here</title>
</head>


<body>
	<div id="page-wrapper">


		<div class="fix_bar">
			지금 바로 결제하러 가기
			<button name="buy" class="buy_btn">구매하기</button>
		</div>


		<div class="tot">
			<div class="title">${detail.get(0).title }</div>


			<div class="detail_main">
				<img
					src="<c:url value="${path }/resource/images/${detail.get(0).detail_img1}"/>">
			</div>
			<div class="detail_main">
				<img
					src="<c:url value="${path }/resource/images/${detail.get(0).detail_img2}"/>">
			</div>
			<div class="detail_main">
				<img
					src="<c:url value="${path }/resource/images/${detail.get(0).detail_img3}"/>">
			</div>


		</div>

	</div>



</body>
</html>