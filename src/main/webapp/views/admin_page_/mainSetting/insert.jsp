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

				<form name = "upinsert" action="insertReg" method="post" onsubmit="return check();" enctype="multipart/form-data">
					<c:set var="sm" value="${data }" />
					<div class="mb-3">
						<div class="filebox preview-image">
							<input class="upload-name" value="파일선택" disabled="disabled">
							<label for="input-file">업로드</label> <input type="file"
								id="input-file" class="upload-hidden" name="imgUpload">
						</div>
					</div>
					<div class="mb-3">
						<label for="content_1">문구1</label>
						<textarea class="form-control" rows="5" name="content_1"
							id="content_1"></textarea>
					</div>
					<div class="mb-3">
						<label for="content_2">문구2</label>
						<textarea class="form-control" rows="5" name="content_2"
							id="content_2"></textarea>
					</div>


					<div>
						<hr>
					</div>
					<div>

						<input class="btn btn-primary" type="submit" value="글쓰기" /> <a
							class="btn btn-primary" href="info">목록으로</a>
					</div>
				</form>
			</article>
			<script type="text/javascript">
				$(document).ready(
						function() {
							var fileTarget = $('.filebox .upload-hidden');
							fileTarget.on('change', function() {
								// 값이 변경되면
								if (window.FileReader) {
									// modern browser
									var filename = $(this)[0].files[0].name;
								} else {
									// old IE 
									var filename = $(this).val().split('/')
											.pop().split('\\').pop();
									// 파일명만 추출 
								}
								// 추출한 파일명 삽입 
								$(this).siblings('.upload-name').val(filename);
							});
						});
				function check() {

					if (upinsert.content_1.value == "") {
						alert("내용을 입력해 주세요.");
						upinsert.content_1.focus();
						return false;
					}
					else if (upinsert.content_2.value == "") {
						alert("내용을 입력해 주세요.");
						upinsert.content_2.focus();
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