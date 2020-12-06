<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>회원가입</title>
<style type="text/css">
table{
  border-collapse: separate;
  border-spacing: 0 10px;
}
</style>
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
		<jsp:include page="../inc/headerV3.jsp" />
	<!-- 페이지 로딩 및 새로고침이 발생되면 포커스가 ID입력란으로 위치합니다. -->
	<div id="page-wrapper">


		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div id="content">

					<!-- Content -->
					<article>

						<h2>회원 가입</h2>

						<!-- 본문 들어가는 부분 -->



						<form class="" name="regfrm" method="post" action="memberProc.jsp">
							<!--memberProc.jsp파일에 regfrm이라는 폼으로 post방식으로 값을 전달한다. -->

							<table align="center">

								<tr>
									<td width="30%"><label for="" class="">아이디</label></td>
									<td width="50%"><input type="text" name="id" class="form-control"
										maxlength="30" placeholder="영문, 숫자만 입력 가능합니다."></td>
									<!-- onClick로 입력한 아이디가 중복된 값인지 확인 -->
									<td width="20%"><input type="button" class="btn btn-primary" value="ID중복확인"
										onClick="idCheck(this.form.id.value)"></td>
								</tr>
								<tr>
									<td><label for="" class="">패스워드</label></td>
									<td><input type="password" name="pwd" class="form-control"
										maxlength="30" placeholder="비밀번호"></td>
									<td></td>
								</tr>

								<tr>
									<td><label for="" class="">패스워드 확인</label></td>
									<td>
									<input type="password" name="repwd" maxlength="30" class="form-control"placeholder="비밀번호 확인">
									</td>
									<td></td>
								</tr>

								<tr>
									<td><label for="" class="">이름</label></td>
									<td>
									<input type="text" name="name" id="" class="form-control" maxlength="15" placeholder="한글만 입력 가능합니다.">
									</td>
									<td></td>
								</tr>

								<tr>
									<td><label for="" class="">생년월일</label></td>
									<td><input name="birthday" maxlength="6" class="form-control" placeholder="ex)950714"></td>
									<td></td>
								</tr>

								<tr>
									<td><label for="" class="">닉네임</label></td>
									<td>
									<input type="text"  id="" name="" class="form-control" placeholder="닉네임을 작성해주세요" maxlength="15">
									</td>
									<td></td>
								</tr>

								<tr>
									<td><label for="" class="">이메일</label></td>
									<td><input type="email" id="" placeholder="이메일" class="form-control"
										maxlength="40"></td>
									<td></td>
								</tr>

								<tr>
									<td><label for="" class="">휴대폰 번호</label></td>
									<td><input type="tel" class="form-control" id=""
										placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11"></td>
									<td></td>
								</tr>

								<tr>
									<td><label for="" class="">성별</label></td>
									<td>남<input type="radio" name="gender" value="M"/> 
										여<input type="radio" name="gebder"value="F"/>
									</td>
									<td></td>
								</tr>

								<tr>
									<td colspan="3" align="center">
									<input type="button" value="회원가입" class="btn btn-primary" onclick="inputCheck()"/> &nbsp; &nbsp; 
									<input type="reset" value="다시쓰기" class="btn btn-primary"/> &nbsp; &nbsp;</td>
								</tr>
								<tr>
									<td>아이디가 있으셨나요?</td>
									<td></td>
									<td><input type="button" value="로그인하러가기" class="btn btn-link"
										onClick="javascript:location.href='login.jsp'"></td>
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