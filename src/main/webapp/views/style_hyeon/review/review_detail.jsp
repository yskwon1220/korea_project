<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>review</title>
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
	<link rel="stylesheet" href="<c:url value="/assets/css/main.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/as.css"/>" />
	
            <script src="<c:url value="/assets/js/V3modernizr-2.6.2.min.js"/>"></script>

<link rel="stylesheet" href="<c:url value="/assets/css/main.css"/>"/>
<link rel="stylesheet" href="<c:url value="/assets/css/notice.css"/>"/>
<link rel="stylesheet" href="<c:url value="/assets/css/main.css"/>" />
<link rel="stylesheet" href="<c:url value="/assets/css/as.css"/>" />




</head>
<body>

<body class="is-preload homepage">
<jsp:include page="../../inc/headerV3.jsp" />

<table border="" width="100%">
	<tr>
		<td>번호</td><td>${vo.no }</td>
	</tr><tr>
		<td>제목</td><td>${vo.title }</td>
	</tr><tr>
		<td>작성자</td><td>${vo.id }</td>
	</tr><tr>
		<td>트레이너</td><td>${vo.tr_no }</td>
	</tr><tr>
		<td>지점</td><td>${vo.lo_no }</td>		
	</tr><tr>
		<td>작성일</td><td>
		<fmt:formatDate value="${vo.regdate }" pattern="yy-MM-dd (E) HH:mm:ss"/>
		</td>
	</tr><tr>
		<td>조회수</td><td>${vo.cnt }</td>
	</tr><tr>
		<td>파일</td><td>${vo.review_file }</td>
	</tr><tr>
		<td>남기실 말</td><td>${vo.content }</td>
	</tr><tr>
		<td colspan="2" align="right">
			<a href="ModifyForm?no=${vo.no }">수정</a>
			<a href="DeleteForm?no=${vo.no }">삭제</a>
			<a href="review_list">목록으로</a>
		</td>
	</tr>
</table>
<jsp:include page="../../inc/footerV3.jsp" />
	

	<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>
</body>
</html>