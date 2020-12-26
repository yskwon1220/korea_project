<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
<head>
<head>
<title>업로드</title>

<link rel="stylesheet"
	href="<c:url value="${path}/resource/css/notice.css"/>" />

</head>
<body>

	<div class="container">
		<div id="content">

			<!-- Content -->
			<article>
				<h2>업로드</h2>

				<form name = "upinsert" action="urInsertReg" method="post" onsubmit="return check();" enctype="multipart/form-data">
					<c:set var="sm" value="${data }" />
					<div class="mb-3">
						<label for="title">제목</label>
						<textarea class="form-control" rows="5" name="title"
							id="title"></textarea>
					</div>
					<div class="mb-3">
						<label for="content">문구</label>
						<textarea class="form-control" rows="5" name="content"
							id="content"></textarea>
					</div>


					<div>
						<hr>
					</div>
					<div>

						<input class="btn btn-primary" type="submit" value="글쓰기" /> <a
							class="btn btn-primary" href="urInfo">목록으로</a>
					</div>
				</form>
			</article>
			<script type="text/javascript">
				function check() {

					if (upinsert.title.value == "") {
						alert("제목을 입력해 주세요.");
						upinsert.title.focus();
						return false;
					}
					else if (upinsert.content.value == "") {
						alert("내용을 입력해 주세요.");
						upinsert.content.focus();
						return false;
					} else
						return true;
				}
			</script>
		</div>
	</div>
	</div>
</body>
</html>