<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>Verti by HTML5 UP</title>
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

            <script src="<c:url value="/assets/js/V3modernizr-2.6.2.min.js"/>"></script>

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


						<h2>내정보</h2>
						<form action="myPage.jsp">
							<table>
								<tr>
									<td><label for="">이름</label></td>
									<td><input type="text" class="form-control" /></td>
								</tr>
								<tr>
									<td><label for="">id</label></td>
									<td><input type="text" class="form-control" /></td>
								</tr>
								<tr>
									<td><label for="">이용권정보</label></td>
									<td></td>
								</tr>
								<tr>
									<td><label for="">주소</label></td>
									<td><input type="text" class="form-control" /></td>
								</tr>
								<tr>
									<td><label for="">별명</label></td>
									<td><input type="text" class="form-control" /></td>
								</tr>
								<tr>
									<td><label for="">email</label></td>
									<td><input type="text" class="form-control" /></td>
								</tr>
								<tr>
									<td><label for="">휴대폰번호</label></td>
									<td><input type="tel" maxlength="11" class="form-control"/></td>
								</tr>
								<tr>
									<td><label for="">성별</label></td>
									<td></td>
								</tr>

							</table>
							<div align="center">
								<input type="submit" class="btn btn-primary" value="회원정보 수정 완료"> 
								<input type="reset" class="btn btn-primary" value="초기화"> 
								<input type="button" class="btn btn-primary" value="마이페이지로 돌아가기" onclick="location.href='myPage.jsp'" />
							</div>
							<br>
							<div align="center">
								<input type="button" value="메인페이지로 돌아가기" class="btn btn-link" onclick="location.href='user_page/MainV3.jsp'">
							</div>

						</form>


					</article>
				</div>
			</div>
		</div>

	     </div>


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