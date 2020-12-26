<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
<head>
<title>이미지</title>

<link rel="stylesheet"
	href="<c:url value="${path}/resource/css/notice.css"/>" />

</head>
<body>
	<%-- 	<jsp:include page="../inc/headerV3.jsp" />
	<div id="main-wrapper "> --%>
	<div id="board">
		<div id="titleList"></div>
		<h1>메인이미지 정보</h1>
		<c:set var="sm" value="${data }" />
		<hr>
		<div class="OutTextBox animate-box">
			<div>
				<div>
					<div>
						<img src="<c:url value="/resource/images/${sm.image}"/>">
					</div>

					<h1>문구1</h1>
					<hr>
					${sm.content_1} <br> <br>
					<h1>문구2</h1>
					<hr>
					${sm.content_2}
				</div>
			</div>

			<div class="bottomB">
				<a class="btn btn-primary" href="info">목록으로</a>
			</div>
		</div>
</body>
</html>