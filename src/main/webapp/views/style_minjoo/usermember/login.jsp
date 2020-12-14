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

<body>
		<%-- <jsp:include page="../inc/headerV3.jsp" /> --%>
	<div id="page-wrapper">


		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div id="content">

					<!-- Content -->
					<article>

						<h2>로그인</h2>

						<!-- 본문 들어가는 부분 -->

<div class="text-center">




<!-- 							<div class="row" style="width: 30%; float:none; margin:0 auto">
							<div class="col">
							<img alt="" src="../images/fit01.jpg" width="342px">
							</div>
							</div>	 -->	
							
					<form action="loginReg" method="post">
							<!-- loginReg.jsp -->
												
							<div class="row" style="width: 30%; float:none; margin:0 auto">

							<div class="form-group col">
								<label for="id">아이디</label>
								<input type="text" id="id" name="id" class="form-control">
							</div>
							</div>
							
							<div class="row" style="width: 30%; float:none; margin:0 auto">
							<div class="form-group  col">
								<label for="pw">패스워드</label>
								<input type="password" id="pw" name="pw" class="form-control">
							</div>
							</div>
		
							<div class="row" style="width: 30%; float:none; margin:0 auto">
							<div class="form-group col ">
								<input type="submit" class="btn btn-primary" value="로그인"> 
								<input type="button" class="btn btn-default" value="아직회원이 아니시라구요?" onClick="javascript:location.href='join'">
							</div>
							</div>
								

							
						</form>
</div>
					</article>

				</div>
			</div>
		</div>

    </div>


<%-- <jsp:include page="../inc/footerV3.jsp" /> --%>
	

	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>
</body>
</html>