<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
<head>
<head>
<hr>
<title>수정</title>

<link rel="stylesheet"
	href="<c:url value="${path}/resource/css/notice.css"/>" />

</head>
<body>

	<div class="container">
		<div id="content">

			<!-- Content -->
			<article>
				<h2>업로드</h2>

				<form name="modify" action="urModifyReg" method="post"
					onsubmit="return check();" enctype="multipart/form-data">
					<c:set var="sm" value="${data }" />
					<input type="hidden" name="mainNo" value="${sm.mainNo}">
					<div class="mb-3">
						<label for="title">제목</label>
						<textarea class="form-control" rows="5" name="title" id="title">${sm.title }</textarea>
					</div>
					<div class="mb-3">
						<label for="content">문구</label>
						<textarea class="form-control" rows="5" name="content"
							id="content">${sm.content }</textarea>
					</div>


					<div>
						<hr>
					</div>
					<div>

						<input class="btn btn-primary" type="submit" value="수정하기" /> <a
							class="btn btn-primary" href="urInfo">목록으로</a>
					</div>
				</form>
			</article>
			<script type="text/javascript">
				function check() {

					if (modify.title.value == "") {
						alert("내용을 입력해 주세요.");
						modify.title.focus();
						return false;
					} else if (modify.content.value == "") {
						alert("내용을 입력해 주세요.");
						modify.content.focus();
						return false;
					} else
						return true;
				}
			</script>
		</div>
	</div>
</body>
</html>