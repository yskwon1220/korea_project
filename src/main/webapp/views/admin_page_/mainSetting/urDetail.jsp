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
					<h1>제목</h1>
					<hr>
					${sm.title} <br> <br>
					<h1>문구</h1>
					<hr>
					${sm.content}
				</div>
			</div>

			<div class="bottomB">
				<a class="btn btn-primary" href="info">목록으로</a>
			</div>
		</div>
</body>
</html>