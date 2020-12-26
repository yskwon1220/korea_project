<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
<head>
<title></title>

<link rel="stylesheet"
	href="<c:url value="${path}/resource/css/notice.css"/>" />

</head>
<body>
	<%-- 	<jsp:include page="../inc/headerV3.jsp" />
	<div id="main-wrapper "> --%>
	<div id="board">
		<div class="bottomB">
			<a class="btn btn-primary" href="urInfo">목록으로</a>
		</div>
	</div>
</body>
</html>