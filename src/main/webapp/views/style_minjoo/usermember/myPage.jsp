<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>

<html>
	<head>
		<title>Verti by HTML5 UP</title>
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
 //가지고 온 세션값을 어떻게 저 mapper.myPage("id") 이거에 넣지? 

%>
									
									<h2>내정보</h2>
									<form action="pwCheck">
												<table>
													<tr>
														<td>이름</td>
														<td>${data.name}</td>
													</tr>
													<tr>
														<td>id</td>
														<td>${data.id }</td>
													</tr>
													<tr>
														<td>내이용권 정보</td>
														<td></td>
													</tr>
													<tr>
														<td>내예약현황 확인</td>
														<td></td>
													</tr>
<%-- 													<tr>
														<td>주소</td>
														<td>${addr }</td>
													</tr> --%>
													<tr>
														<td>이메일</td>
														<td>${data.email }</td>
													</tr>
													<tr>
														<td>휴대폰 번호</td>
														<td>${data.tel }</td>
													</tr>
													<tr>
														<td>성별</td>
														<td>${data.gender }</td>
													</tr>
													
												</table>
												<div align="right">
											<input  type="submit" class="btn btn-primary" value="회원정보 수정" >
											<input  type="button" class="btn btn-default" value="메인페이지로 돌아가기" onClick="javascript:location.href='user_page/MainV3'" >
												</div>
												</form>
												
												
								</article>
						</div>
					</div>
				</div>

      </div>


<%-- <jsp:include page="../inc/footerV3.jsp" /> --%>
	


