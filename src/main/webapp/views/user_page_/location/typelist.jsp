<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>FitNess Club</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link
	href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700"
	rel="stylesheet">

<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3animate.css"/>" />
<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3icomoon.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
<link rel="stylesheet" href="<c:url value="${path }/resource/css/V3style.css"/>" />


</head>
<body>

	<div id="fh5co-page">

		<div id="fh5co-pricing-section">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>예약</h2>
						<p>PT / 헬스 선택해주세요</p>
					</div>
				</div>
				<div class="row">
					<div class="pricing">

						<div class="col-md-3 animate-box">
							<div class="price-box" style="width:300px; height:500px; margin-right:500px;">
								<h2 class="pricing-plan" >PT</h2>
								<img src="<c:url value="${path }/resource/images/fit02.jpg"/>"alt="" width="100%" height="250px" />
								<p>개인 맞춤 트레이닝</p>
								
 								
 								
 								
 								<form name="frm1" action="../trainer/trainerlist" method="get">
								
								<input type ="hidden" name="lo_no" value="${data.lo_no}">
								<input type ="hidden" name="lo_name" value="${data.lo_name}">
								<input type ="hidden" name="type" value="pt">
								<input type ="hidden" id="hidden_real" name="user_id" value="${user_id}"> 
								<input type ="button" class="btn btn-select-plan btn-sm" onclick="return resAjaxGo3()" value="Select Plan"> 
								</form>
								
							</div>
						</div>
 						<div class="col-md-3 animate-box" >
							<div class="price-box" style="width:300px; height:500px; margin-right:500px;">
								<h2 class="pricing-plan">Health</h2>
								<img src="<c:url value="${path }/resource/images/fit01.jpg"/>"alt="" width="100%" height="250px" />
								<p>자유로운 시설 이용</p>
								
								
								
								<form name="frm2" action="../reservation/schedule" method="get">
								
								<input type ="hidden" name="lo_no" value="${data.lo_no}">
								<input type ="hidden" name="lo_name" value="${data.lo_name}">
								<input type ="hidden" name="type" value="health">
								
								 <input type ="hidden" id="hidden_real" name="user_id" value="${user_id}"> 
								<input class="btn btn-select-plan btn-sm" type ="button" onclick="return resAjaxGo4()" value="Select Plan">
								</form> 
								
								
							</div>
						</div> 

					</div>
				</div>
				
			</div>
		</div>

	</div>

<script>

function resAjaxGo3() {
	$.ajax({
		//localhost:81/resAjax/reservation/myrescnt?user_id=hyeji
		url : '/resAjax/reservation/myrescnt?user_id=${user_id}',
		success : function(data) {
			//alert(data)
			if(eval(data)>0){
				frm1.submit()
			}else{
				alert("결제한 이용권 내역이 없습니다. 이용권 구매 후 다시 선택해 주세요. ")
			}
		},
		error : function(e) { 
			alert(e.responseText);
		}
	});
}
function resAjaxGo4() {
	$.ajax({
		//localhost:81/resAjax/reservation/myrescnt?user_id=hyeji
		url : '/resAjax/reservation/myrescnt?user_id=${user_id}',
		success : function(data) {
			//alert(data)
			if(eval(data)>0){
				frm2.submit()
			}else{
				alert("결제한 이용권 내역이 없습니다. 이용권 구매 후 다시 선택해 주세요. ")
			}
		},
		error : function(e) { 
			alert(e.responseText);
		}
	});
}

</script>
<script src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/V3main.js"/>"></script>

</body>
</html>