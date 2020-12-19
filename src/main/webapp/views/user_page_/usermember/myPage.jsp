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

									
									<h2>내정보</h2>
									<form action="pwCheck">
									
									<div class="row" style="width: 30%; float:none; margin:0 auto">
		<div class="form-group col">
				<label for="user_id" class="">아이디</label>
				<input type="text" readonly="readonly" class="form-control" id="user_id" name="user_id" value="${data.user_id}">
		</div>

</div>
			

			


<div class="row" style="width: 30%; float:none; margin:0 auto">
			<div class="form-group  col">	
				<label for="user_name" class="">이름</label>
				<input type="text" readonly="readonly"  id="user_name" class="form-control" maxlength="15" name="user_name" value="${data.user_name}">
			</div>	
				
</div>

 <div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group col">
		<label for="user_birth" class="">생년월일</label>
		<input type="text" readonly="readonly" id="user_birth" maxlength="7" class="form-control" value="${data.user_birth}">
	</div>	
</div> 


<div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="user_email" class="">이메일</label>
		<input type="email" readonly="readonly" id="email" class="form-control" maxlength="40" name="email" value="${data.user_email}">
	</div>
</div>

<div class="row" style="width: 30%; float:none; margin:0 auto">
	<div class="form-group  col">
		<label for="user_tel" class="">휴대폰 번호</label>
		<input type="tel" readonly="readonly" class="form-control" id="user_tel"  maxlength="11" name="user_tel" value="${data.user_tel}">
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
									
			<div class="row" align="center" >
									<input  type="submit" class="btn btn-primary" value="회원정보 수정" >
			</div>

										<div align="right">
									<input  type="button" class="btn btn-default" value="헤지가이름지어" onClick="javascript:location.href='/MainV3'" >
									<input  type="button" class="btn btn-default" value="주호오빠가이름" onClick="javascript:location.href='/MainV3'" >
										</div>
										</form>
										
												
								</article>
						</div>
					</div>
				</div>

      </div>


<%-- <jsp:include page="../inc/footerV3.jsp" /> --%>
	


