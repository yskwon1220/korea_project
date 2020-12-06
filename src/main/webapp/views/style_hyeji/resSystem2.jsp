<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<title>hyejipage</title>

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


<link rel="stylesheet"
	href="<c:url value="/assets/css/calendarstyle.css"/>" />

</head>


<body onload="renderDate()">

	<jsp:include page="../inc/headerV3.jsp" />

	<div id="page-wrapper">

		<!-- <h2 style="padding-right: 700px; margin-bottom: 50px;">예약자 정보</h2> -->

		<div class="wrapper" >


			<table width="500"
				style="height: 70vh; margin: auto;">
				<thead>
					<tr>
						<th colspan="2" height="100" style="padding-left: 50px;">스마트
							예약 가능시간 24시간 가능 <br>당일 취소는 불가능 합니다.
						</th>
					</tr>

					<!-- 					<tr>
						<th colspan="2">예약자 정보</th>
					</tr> -->
				</thead>

				<tbody>
					<tr>
						<td>지점</td>
						<td><input type="text" name="" value="강남점" /></td>
					</tr>
					<tr>
						<td>잔여회차</td>
						<td><input type="text" name="" value="4회차(12:00)[잔여:66]"
							readonly="readonly" /></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="" value="홍길동" /></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="" value="" /></td>
					</tr>
					<tr>
						<td>연락처</td>
						<td><input type="text" name="" value="010-1111-1234" /></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea cols="30">
			
			
			
			</textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="예약하기">
						<input type="button" value="되돌아가기">
						</td>
					</tr>

				</tbody>


			</table>




		</div>
		<!-- wrapper 끝 -->



	</div>
	<!-- page_wrapper 끝 -->




	<jsp:include page="../inc/footerV3.jsp" />



	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>




</body>
</html>