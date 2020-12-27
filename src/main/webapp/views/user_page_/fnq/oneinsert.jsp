<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<head>
<title>FitNess Club</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<!-- <link rel="shortcut icon" href="favicon.ico"> -->
<c:set var="path" value="${pageContext.request.contextPath}" />
<link
	href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700"
	rel="stylesheet">

<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3animate.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3icomoon.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3bootstrap.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3flexslider.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.carousel.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3owl.theme.default.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="${path }/resource/css/V3style.css"/>" />




<link rel="stylesheet"
	href="<c:url value="${path}/resource/css/notice.css"/>" />




</head>
<div id="main-wrapper">
	<div style="height: 100px;"></div>
	<div class="container">
		<div id="content">
			<%
				session.getAttribute("user_id");
			System.out.println(session.getAttribute("user_id"));
			%>

			<!-- Content -->
			<article>
				<div style="height: 100px;"></div>
				<h2>1대1 문의</h2>

				<form name="oneinsert" onsubmit="return check(); "
					action="oneinsertReg" method="post" enctype="multipart/form-data">

					<input type="hidden" name="user_id"
						value="<%=session.getAttribute("user_id")%>">
					<div class="mb-3">
						<label for="title">제목</label> <input type="text"
							class="form-control" name="title" id="title"
							placeholder="제목을 입력해 주세요">

					</div>
					<div class="mb-3">
						<label for="content">내용</label>

						<textarea class="form-control" rows="5" name="content"
							id="content" placeholder="내용을 입력해 주세요"></textarea>
					</div>
					<div>
						<hr>
					</div>
					<div>
						<input class="btn btn-primary" type="submit" value="글쓰기" /> <a
							class="btn btn-primary" href="onelist">목록으로</a>
					</div>
				</form>
				<script>
					function check() {

						if (oneinsert.title.value == "") {
							alert("제목을 입력해 주세요.");
							oneinsert.title.focus();
							return false;
						}

						else if (oneinsert.content.value == "") {
							alert("내용을 입력해 주세요.");
							oneinsert.content.focus();
							return false;
						} else
							return true;
					}
				</script>

			</article>
		</div>
	</div>

</div>
				<div style="height: 150px;"></div>
<script
	src="<c:url value="${path }/resource/js/V3modernizr-2.6.2.min.js"/>"></script>
<script src="<c:url value="${path }/resource/js/V3jquery.min.js"/>"></script>
<script
	src="<c:url value="${path }/resource/js/V3jquery.easing.1.3.js"/>"></script>
<script src="<c:url value="${path }/resource/js/V3bootstrap.min.js"/>"></script>
<script
	src="<c:url value="${path }/resource/js/V3jquery.waypoints.min.js"/>"></script>
<script
	src="<c:url value="${path }/resource/js/V3owl.carousel.min.js"/>"></script>
<script
	src="<c:url value="${path }/resource/js/V3jquery.flexslider-min.js"/>"></script>
<script src="<c:url value="${path }/resource/js/V3main.js"/>"></script>

</body>
</html>