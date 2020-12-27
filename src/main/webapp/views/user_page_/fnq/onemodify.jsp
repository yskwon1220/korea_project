<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
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
<body>

	<div class="container">
		<div id="content">

			<!-- Content -->
			<article>
				<div style="height: 100px;"></div>
				<h2>1대1 문의</h2>

				<form name="onemodify" action="onemodifyReg"
					onsubmit="return check(); " method="post"
					enctype="multipart/form-data">
					<c:set var="sm" value="${data }" />
					<input type="hidden" name="board_no" value="${sm.board_no }">
					<div class="mb-3">
						<label for="title">제목</label> <input type="text"
							class="form-control" name="title" id="title" value="${sm.title }">
					</div>
					<div class="mb-3">
						<label for="content">내용</label>
						<textarea class="form-control" rows="5" name="content"
							id="content">${sm.content }</textarea>
					</div>
					<div>
						<hr>
					</div>

					<div>
						<div class="btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-primary"> <input type="submit"
								value="글쓰기" />
							</label>
						</div>
						| <a href="onelist">목록으로</a>
					</div>
				</form>
				<script>
					function check() {

						if (onemodify.title.value == "") {
							alert("제목을 입력해 주세요.");
							onemodify.title.focus();
							return false;
						}

						else if (onemodify.content.value == "") {
							alert("내용을 입력해 주세요.");
							onemodify.content.focus();
							return false;
						} else
							return true;
					}
				</script>
			</article>

		</div>
	</div>

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