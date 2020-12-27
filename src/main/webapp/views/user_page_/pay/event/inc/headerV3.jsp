<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<style>
li ul {
	height: 0px;
	overflow: hidden;
	transition-duration: 0.5s;
}

li:hover ul {
	height: auto;
}
</style>
<header id="fh5co-header" role="banner">
	<div class="container" style="width: 1350px;">
		<div class="header-inner">
			<h1>
				<a href="<c:url value="/main"/>">FitNess Club</a>
			</h1>
			<nav role="navigation">
				<ul>
					<li><a href="<c:url value="/navi/introduce"/>">Introduce</a></li>
						 <li><a href="<c:url value="/navi/find"/>">Find</a></li>
						<li><a href="<c:url value="/navi/membership"/>">MemberShip</a></li>
						<li><a href="<c:url value="${path }/user_page_/location/locationlist"/>">Reservation</a></li>
						<li><a href="<c:url value="/navi/community"/>">Community</a></li>
						<li><a href="<c:url value="${path }/user_page_/pay/event/event_page"/>">Event List</a></li>
					<c:choose>
						<c:when test="${not empty sessionScope.user_id }">
							<!-- 로그인된 상태일때  -->
							<li><a
								href="<c:url value="${path }/user_page_/usermember/myPage"/>">${user_id }'s
									page</a></li>
							<li class="cta"><a
								href="<c:url value="${path }/user_page_/usermember/logout"/>">Logout</a></li>
							<c:if test="${sessionScope.admin eq 'admin' }">
								<li class="cta"><a
									href="<c:url value="${path }/admin_page_/member/info"/>">admin</a></li>
							</c:if>
						</c:when>
						<c:otherwise>
							<li class="cta"><a
								href="<c:url value="${path }/user_page_/usermember/login"/>">Login</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
		</div>
	</div>
</header>