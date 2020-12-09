<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
   <style>

        li ul{
            height: 0px;
            overflow: hidden;
            transition-duration: 0.5s;
        }
        
         li:hover ul{
            height: auto;
        }
        
</style>
	<header id="fh5co-header" role="banner">
		<div class="container">
			<div class="header-inner">
				<h1><a href="<c:url value="/MainV3"/>">FitNess Club</a></h1>
				<nav role="navigation">
					<ul>
						<li><a href="<c:url value="/style_hyeon/info.jsp"/>">Introduce</a></li>
						<li><a href="<c:url value="/style_hyeon/gangdong.jsp"/>">Find</a></li>
						<li><a href="<c:url value="/style_hyeon/membership.jsp"/>">MemberShip</a></li>
						<li><a href="<c:url value="/style_hyeji/resSystem.jsp"/>">reservation</a></li>
						<li><a href="/style_seongmin/community">community</a></li>
						<li><a href="<c:url value="${path }/style_jooho/event/event_page"/>">eventlist</a></li>
						<li><a href="<c:url value="${path }/style_jooho/payment/payment"/>">payment_main</a></li>
						<li class="cta"><a href="#">Get Join</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>