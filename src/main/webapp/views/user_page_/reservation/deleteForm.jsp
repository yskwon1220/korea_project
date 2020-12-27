<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>FitNess Club</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<!-- <link rel="shortcut icon" href="favicon.ico"> -->
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
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/calendarstyle.css"/>" />

</head>


<body onload="document.f.user_pw.focus()">


	<div id="fh5co-page">

		<div id="fh5co-pricing-section">
			<div class="container">


				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">
						<h2>예약 취소</h2>
						<p>예약 취소시 되돌릴 수 없습니다.</p>
					</div>
				</div>
				<%-- <c:set var="rvo" value="${data }"/> 안됌--%>
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center fh5co-heading animate-box">


						<form id="successForm" action="deleteSuccess" name="f" method="post"
							onsubmit="return formCheck(this)">

							<input type="hidden" name="user_id" value="${param.user_id}" />
							<input type="hidden" name="re_no" value="${param.re_no}" /> 
							<input type="hidden" name="resdate" value="${param.resdate}"> 
							<input type="hidden" name="resTime" value="${param.resTime}">
							<input type="hidden" name="lo_no" value="${param.lo_no}">


							<table class="type07">
								<thead>
									<tr>

										<th colspan="2"></th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="2">비밀번호&nbsp;:&nbsp;&nbsp;<input id="pw" type="password" name="user_pw" /></td>

									</tr>

								</tbody>
							</table>
							<br>
							<input type="button" onclick="gogo()" class="btn btn-primary" value="예약취소하기"> &nbsp;&nbsp; 
							<input
								type="button" class="btn btn-primary" value="되돌아가기"
								onclick="location.href='javascript:history.back()'">
						</form>

					</div>
				</div>


			</div>
		</div>



	</div>
	<script src="<c:url value="${path }/resource/js/jquery.min.js"/>"></script>
	<script src="<c:url value="${path }/resource/js/jquery-3.5.1.js"/>"></script>

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
	
	
	<script>
	function gogo() {
		var password = document.getElementById('pw').value;
		var userPw = '${data.user_pw}';

		if(password == userPw) {
			document.getElementById('successForm').submit();
		} else {
			alert("비밀번호가 일치하지 않습니다.");
		}
	}
</script>
</body>
</html>