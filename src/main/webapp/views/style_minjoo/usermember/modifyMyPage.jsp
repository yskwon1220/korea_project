<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "com.korea.health.user.model.usermember.UserMemberVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>회원정보 수정</title>
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
<% 
//세션값 가지고 오기 ... 
session.getAttribute("id");


%>


						<h2>내정보</h2>
<div class="row text-center">						
						<form method="post" action="modifyMyPageReg">


<div class="row" style="width: 30%; float:none; margin:0 auto">
		<div class="form-group col">
				<label for="id" class="">아이디</label>
				<input type="text" readonly="readonly" class="form-control" id="id" name="id" value="${data.id}">
		</div>
		<div class="row" style="float:right;">
				<div class="form-group col">
						<input type="button" class="btn btn-primary" value="비밀번호 변경" onclick="location.href='pwModify'" />
				</div>
		</div>
</div>
			

			


<div class="row" style="width: 30%; float:none; margin:0 auto">
			<div class="form-group  col">	
				<label for="name" class="">이름</label>
				<input type="text"  id="name" class="form-control" maxlength="15" name="name" value="${data.name}">
			</div>	
				
</div>

<%-- <div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="birthday" class="">생년월일</label>
		<input type="text" readonly="readonly" id="birthday" maxlength="6" class="form-control" value="${birthday}">
	</div>	
</div> --%>


<div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="email" class="">이메일</label>
		<input type="email" id="email" class="form-control" maxlength="40" name="email" value="${data.email}">
	</div>
</div>

<div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="tel" class="">휴대폰 번호</label>
		<input type="tel" class="form-control" id="tel"  maxlength="11" name="tel" value="${data.tel}">
	</div>
</div>

<div class="row" style="width: 30%;   margin:0 auto">
       <div class="form-group col">
                    <label for="gender" class="">성별</label>
                    <div class="col">
					<input type="text" readonly="readonly" id="gender" name="gender" class="form-control" value="${data.gender}">
                    </div>
                </div>
</div>


<div class="row form-inline" style="width: 30%; float:none;  margin:0 auto">
	<div class="form-group col ">
					<!-- <input type="button" class="btn btn-primary" value="비밀번호 변경" onclick="location.href='myPage.jsp'" /> -->
<!-- 	</div>
	<div class="form-group col "> -->
					<input type="submit" class="btn btn-primary" value="회원정보 수정 완료"/> 
					<input type="reset" class="btn btn-primary" value="초기화"/> 
	</div>
	
</div>


<div class="row form-inline" style="width: 30%; float:right;  margin:0 auto">	
	<div class="form-group col ">
		<input type="button" class="btn btn-default" value="마이페이지로 돌아가기" onclick="location.href='myPage'" />
		<input type="button" class="btn btn-default" value="메인페이지로 돌아가기" onclick="location.href='/MainV3'"/>
	</div>
</div>

</form> 
</div> <!-- 폼 감싸는 div  -->



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