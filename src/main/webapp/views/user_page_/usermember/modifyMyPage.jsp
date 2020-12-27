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
<%-- <jsp:include page="../inc/headerV3.jsp" /> --%>
	<div id="page-wrapper">

		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div id="content">

					<!-- Content -->
					<article>

<div class="row text-center">						
						<div class="row " style="margin:0 auto; padding-top:50px; padding-bottom: 25px;">
							<h1>내정보</h1>
						</div>
						<form method="post" action="modifyMyPageReg" onsubmit="return checkValue()">


<div class="row" style="width: 30%; float:none; margin:0 auto">
		<div class="form-group col">
				<label for="user_id" class="">아이디</label>
				<input type="text" readonly="readonly" class="form-control" id="user_id" name="user_id" value="${data.user_id}">
		</div>
		<div class="row" style="float:right;">
				<div class="form-group col">
						<input type="button" class="btn btn-primary" value="비밀번호 변경" onclick="location.href='pwModify'" />
				</div>
		</div>
</div>
			

			


<div class="row" style="width: 30%; float:none; margin:0 auto">
			<div class="form-group  col">	
				<label for="user_name" class="">이름</label>
				<input type="text"  id="user_name" class="form-control" maxlength="15" name="user_name" value="${data.user_name}">
			</div>	
				
</div>

 <div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="user_birth" class="">생년월일</label>
		<input type="text" readonly="readonly" id="user_birth" maxlength="6" class="form-control" value="${data.user_birth}">
	</div>	
</div>


<div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="user_email" class="">이메일</label>
		<input type="email" id="user_email" class="form-control" maxlength="40" name="user_email" value="${data.user_email}">
	</div>
</div>

<div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="user_tel" class="">휴대폰 번호</label>
		<input type="tel" class="form-control" id="user_tel"  maxlength="11" name="user_tel" value="${data.user_tel}">
	</div>
</div>

<div class="row" style="width: 30%;   margin:0 auto">
       <div class="form-group col">
                    <label for="gender" class="">성별</label>
                    <div class="col">
						 <c:choose>
	                    	<c:when test="${data.gender eq 'M' }">
								<input type="text" readonly="readonly" id="gender" name="gender" class="form-control" value="남성">
	                    	</c:when>
	                    	<c:when test="${data.gender eq 'F' }">
								<input type="text" readonly="readonly" id="gender" name="gender" class="form-control" value="여성">
	                    	</c:when>
						</c:choose>                    
                    </div>
                </div>
</div>


<div class="row form-inline" style="width: 30%; float:none;  margin:0 auto; ">
	<div class="form-group col ">
					<input type="submit" class="btn btn-primary" value="회원정보 수정 완료"/> 
					<input type="reset" class="btn btn-primary" value="초기화"/> 
	</div>
	
</div>


<div class="row text-center" style="width: 30%; float:none;   margin:0 auto; padding-top:50px; padding-bottom: 50px">	
	<div class="form-group col " >
		<input type="button" class="btn btn-default" value="마이페이지로 돌아가기" onclick="location.href='myPage'" />
		<input type="button" class="btn btn-default" value="회원탈퇴" onclick="location.href='delete'"/>
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