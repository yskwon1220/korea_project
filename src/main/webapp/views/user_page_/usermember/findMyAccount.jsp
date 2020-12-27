<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>로그인</title>
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
	<!-- 페이지 로딩 및 새로고침이 발생되면 포커스가 ID입력란으로 위치합니다. -->
	<%-- 	<jsp:include page="../inc/headerV3.jsp" /> --%>
	<div id="page-wrapper">


		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div id="content">

					<!-- Content -->
					<article>



						<div class="row text-center">
						<div class="row " style="margin:0 auto; padding-top:50px; padding-bottom: 25px;">
							<h1>나의 계정 찾기</h1>
						</div>
						<h3>ID찾기</h3>	
							<form action="findId">

								<div class="row" style="width: 30%; float: none; margin: 0 auto">
									<div class="form-group  col">
										<label for="name" class="">이름</label> 
										<input type="text" id="user_name" name="user_name" class="form-control"
											maxlength="30" placeholder="이름을 입력해주세요">
									</div>
								</div>

								<div class="row" style="width: 30%; float: none; margin: 0 auto">
									<div class="form-group  col">
										<label for="user_tel" class="">전화번호</label> <input type="tel"
											id="user_tel" name="user_tel" class="form-control"
											maxlength="11" placeholder="전화번호를 입력해주세요">
									</div>
								</div>


								<div class="row" style="width: 30%; float: none; margin: 0 auto; ">
									<div class="form-group col ">
										<input type="submit" class="btn btn-primary" value="ID 찾기" />
									</div>
								</div>

							</form>
						</div>


						<div class="row text-center">
							<h3  style="margin:0 auto; padding-top:50px;">PW찾기</h3>
							<form action="findPw">

								<div class="row" style="width: 30%; float: none; margin: 0 auto">
									<div class="form-group  col">
										<label for="user_id" class="">ID</label> <input type="text"
											id="user_id" name="user_id" class="form-control"
											maxlength="30" placeholder="ID를 입력해주세요">
									</div>
								</div>

								<div class="row" style="width: 30%; float: none; margin: 0 auto">
									<div class="form-group  col">
										<label for="user_email" class="">이메일</label> <input
											type="email" id="user_email" name="user_email"
											class="form-control" maxlength="30"
											placeholder="가입한 이메일을 기입해주세요">
									</div>
								</div>


								<div class="row" style="width: 30%; float: none; margin: 0 auto">
									<div class="form-group col ">
										<input type="submit" class="btn btn-primary" value="비밀번호 찾기" />
									</div>
								</div>

							</form>
						</div>

						<%-- <div class="full">
		<div class="container">
			<div class="area_inputs wow fadeIn">
				<div class="sub_title font-weight-bold text-white">
					<h3>아이디/비밀번호 찾기</h3>
					<p>인증된 이메일만 정보 찾기가 가능합니다 :)</p>
				</div>
				<div style="margin-bottom: 10px;"
					class="custom-control custom-radio custom-control-inline">
					<input type="radio" class="custom-control-input" id="search_1" name="search_total" onclick="search_check(1)" checked="checked">
					<label class="custom-control-label font-weight-bold text-white"	for="search_1">아이디 찾기</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
					<input type="radio" class="custom-control-input" id="search_2" name="search_total" onclick="search_check(2)"> 
					<label class="custom-control-label font-weight-bold text-white" for="search_2">비밀번호 찾기</label>
				</div>
				<div id="searchI">
					<div class="form-group">
						<label class="font-weight-bold text-white" for="inputName_1">이름</label>
						<div>
							<input type="text" class="form-control" id="inputName_1" name="inputName_1" placeholder="ex) 갓민수">
						</div>
					</div>
					<div class="form-group">
						<label class="font-weight-bold text-white" for="inputPhone_1">휴대폰번호</label>
						<div>
							<input type="text" class="form-control" id="inputPhone_1" name="inputPhone_1" placeholder="ex) 01077779999">
						</div>
					</div>
					<div class="form-group">
						<button id="searchBtn" type="button" onclick="idSearch_click()" class="btn btn-primary btn-block">확인</button>
					<a class="btn btn-danger btn-block"	href="${pageContext.request.contextPath}">취소</a>
					</div>
				</div>
				<div id="searchP" style="display: none;">
					<div class="form-group">
						<label class="font-weight-bold text-white" for="inputId">아이디</label>
						<div>
							<input type="text" class="form-control" id="inputId" name="inputId_2" placeholder="ex) godmisu">
						</div>
					</div>
					<div class="form-group">
						<label class="font-weight-bold text-white" for="inputEmail_2">이메일</label>
						<div>
							<input type="email" class="form-control" id="inputEmail_2"	name="inputEmail_2" placeholder="ex) E-mail@gmail.com">
						</div>
					</div>
					<div class="form-group">
						<button id="searchBtn2" type="button" class="btn btn-primary btn-block">확인</button>
					<a class="btn btn-danger btn-block"	href="${pageContext.request.contextPath}">취소</a>
				</div>
				</div>
			</div>
		</div>
	</div> --%>
					</article>

				</div>
			</div>
		</div>

	</div>


	<%-- <jsp:include page="../inc/footerV3.jsp" /> --%>


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