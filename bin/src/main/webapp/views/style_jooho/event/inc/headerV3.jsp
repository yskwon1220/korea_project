<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
   
	<header id="fh5co-header" role="banner">
		<div class="container">
			<div class="header-inner">
				<h1><a href="<c:url value="/user_page/MainV3.jsp"/>">FitNess Club</a></h1>
				<nav role="navigation">
					<ul>
						<li><a href="<c:url value="/user_page/style_hyeon/info.jsp"/>">Introduce</a></li>
						<li><a href="<c:url value="/user_page/style_hyeon/gangdong.jsp"/>">Find</a></li>
						<li><a href="<c:url value="/user_page/style_hyeon/membership.jsp"/>">MemberShip</a></li>
						<li><a href="<c:url value="/user_page/style_hyeji/resSystem.jsp"/>">reservation</a></li>
						<li><a href="<c:url value="/user_page/style_hyeon/review.jsp"/>">review</a></li>
						<li class="cta"><a href="#">Get Join</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>