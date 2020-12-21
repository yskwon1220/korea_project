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

<script>
// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
function checkValue()
{

    
    if(!document.userInfo.user_pw.value){
        alert("비밀번호를 입력하세요.");
        return false;
    }
    if(!document.userInfo.user_pwpw.value){
        alert("비밀번호를 입력하세요.");
        return false;
    }
    
    // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
    if(document.userInfo.user_pw.value != document.userInfo.user_pwpw.value ){
        alert("비밀번호를 동일하게 입력하세요.");
        return false;
    }
}

</script>
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

						<h2>비밀번호확인</h2>

						<!-- 본문 들어가는 부분 -->
						<div class="row text-center"><!-- 가운데 정렬을 위해 -->
						<form action="pwModifyReg" name="userInfo" onsubmit="return checkValue()">
						
							<div class="row" style="width: 30%; float:none; margin:0 auto">
											<div class="form-group  col">
												<label for="user_pw" class="">바꾸실 비밀번호</label>
												<input type="password" id="user_pw" name="user_pw" class="form-control" maxlength="30" placeholder="비밀번호">
											</div>
							</div>
							
							<div class="row" style="width: 30%; float:none; margin:0 auto">
											<div class="form-group  col">
												<label for="user_pwpw" class="">바꾸실 비밀번호 확인</label>
												<input type="password" id="user_pwpw" name="user_pwpw" class="form-control" maxlength="30" placeholder="비밀번호 확인">
											</div>
							</div>
				
				
							<div class="row" style="width: 30%; float: none; margin: 0 auto">
								<div class="form-group col ">
									<input type="submit" class="btn btn-primary" value="비밀번호  수정" />
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