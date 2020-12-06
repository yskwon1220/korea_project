<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>회원가입</title>
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
<body onLoad="regFrm.id.focus()">
	<!-- 페이지 로딩 및 새로고침이 발생되면 포커스가 ID입력란으로 위치합니다. -->
		<jsp:include page="../inc/headerV3.jsp" />
	<div id="page-wrapper">


		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div id="content">

					<!-- Content -->
					<article>

						<h2>로그인</h2>

						<!-- 본문 들어가는 부분 -->



						<form action="user_page/MainV3.jsp" method="post">
							<!-- loginReg.jsp -->
							<table width="400px">

								<tr>
									<td><label for="">아이디</label></td>
									<td><input type="text" name="id" class="form-control"></td>
								</tr>

								<tr>
									<td><label for="">패스워드</label></td>
									<td><input type="password" name="pass" class="form-control"></td>
								</tr>

								<tr>
									<td colspan="2" align="center">
									<input type="submit" class="btn btn-primary" value="로그인"> 
									<input type="button" class="btn btn-primary" value="아직회원이 아니시라구요?" onClick="javascript:location.href='join.jsp'">
										</td>
								</tr>

							</table>
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