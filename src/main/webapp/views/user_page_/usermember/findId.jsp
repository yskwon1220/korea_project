<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>

<html>
	<head>
		<title>findId</title>
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


		<div id="page-wrapper">



			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div id="content">

							<!-- Content -->
								<article>

									
									<h2>아이디 찾기 완료</h2>
						<div class="row text-center"><!-- 가운데 정렬을 위해 -->
						<form action="login">
					<c:choose>
		                   	<c:when test="${memberId eq 'findIdFailed' }">
									<h2>찾는 계정이 없습니다</h2>
		                   	</c:when>
								
		
		
		                   	<c:otherwise>
					
							<div class="row" style="width: 30%; float:none; margin:0 auto">
									<div class="form-group  col">
										<label for="pw" class="">고객님의 ID</label>
										<input type="text" id="user_id" name="user_id" class="form-control" readonly="readonly" value="${memberId.user_id}">
									</div>
							</div>
					
					
					        </c:otherwise>
					</c:choose> 



			<div class="row" style="width: 30%; float: none; margin: 0 auto">
				<div class="form-group col ">
					<input type="submit" class="btn btn-primary" value="로그인하러가기" />
				</div>
			</div>

						</form>
						</div>
								</article>
						</div>
					</div>
				</div>

      </div>


	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>
	</body>
</html>