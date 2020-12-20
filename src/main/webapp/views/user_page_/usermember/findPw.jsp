<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>

<html>
	<head>
		<title>findPw</title>
		<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" /> 
	<c:set var="path" value="${pageContext.request.contextPath}" /> 
		<link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700" rel="stylesheet">

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


		<div id="page-wrapper">



			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div id="content">

							<!-- Content -->
								<article>

									
									<h2>비밀번호 찾기</h2>
						<div class="row text-center"><!-- 가운데 정렬을 위해 -->
						<form action="login">
					<c:choose>
                   	<c:when test="${memberPw eq 'findPwFailed' }">
								<h2>찾는 계정이 없습니다</h2>
                   	</c:when>
                   	<c:otherwise>

						<div class="row" style="width: 30%; float:none; margin:0 auto">
										<div class="form-group  col">
											<label for="pw" class="">고객님의 비밀번호</label>
											<input type="text" id="user_pw" name="user_pw" class="form-control" readonly="readonly" value="${memberPw.user_pw}">
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