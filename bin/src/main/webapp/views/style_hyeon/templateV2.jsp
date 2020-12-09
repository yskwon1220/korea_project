<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>FITNESS CLUB</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
</head>
<body class="is-preload no-sidebar">
	<div id="page-wrapper">

		<jsp:include page="inc/headerV3.jsp" />

		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div id="content">

					<!-- Content -->
					<article>
						<div style="">
							<!-- 내용  -->
							<jsp:include page="${mainUrl }" />
						</div>
					</article>

				</div>
			</div>
		</div>
	</div>

	<jsp:include page="inc/footerV3.jsp" />

	<!-- Scripts -->

	<!-- Scripts -->
	<script src="<c:url value="/assets/js/jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/jquery.dropotron.min.js"/>"></script>
	<script src="<c:url value="/assets/js/browser.min.js"/>"></script>
	<script src="<c:url value="/assets/js/breakpoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/util.js"/>"></script>
	<script src="<c:url value="/assets/js/main.js"/>"></script>
</body>
</html>