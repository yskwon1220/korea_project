<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
<head>
<head>
<title>공지사항</title>

<link rel="stylesheet"
	href="<c:url value="${path}/resource/css/notice.css"/>" />

</head>
<body>
	<div style="height: 100px;"></div>
	<div class="container">
		<div id="content">

			<!-- Content -->
			<article>
				<hr>
				<h2>공지사항</h2>
				<hr>

				<form name="noticemodify" action="modifyReg"
					onsubmit="return check(); " method="post"
					enctype="multipart/form-data">
					<c:set var="sm" value="${data }" />

					<input type="hidden" name="notice_no" value="${sm.notice_no }">
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
						<input class="btn btn-primary" type="submit" value="수정하기" /> <a
							class="btn btn-primary" href="info">목록으로</a>
					</div>
				</form>

				<script>
					function check() {

						if (noticemodify.title.value == "") {
							alert("제목을 입력해 주세요.");
							noticemodify.title.focus();
							return false;
						}

						else if (noticemodify.content.value == "") {
							alert("내용을 입력해 주세요.");
							noticemodify.content.focus();
							return false;
						} else
							return true;
					}
				</script>
			</article>

		</div>
	</div>
</body>
</html>