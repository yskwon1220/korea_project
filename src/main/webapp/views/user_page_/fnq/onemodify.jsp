<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
<head>
<head>
<title>1대1 문의</title>

<link rel="stylesheet"
	href="<c:url value="${path}/resource/css/notice.css"/>" />

</head>
<body>

	<div class="container">
		<div id="content">

			<!-- Content -->
			<article>
				<h2>1대1 문의</h2>
				<form action ="onemodifyReg" method="post" enctype="multipart/form-data">
				<c:set var="sm" value="${data }" />
						<input type = "hidden" name = "board_no" value = "${sm.board_no }">
					<div class="mb-3">
						<label for="title">제목</label> <input type="text"
							class="form-control" name="title" id="title" value="${sm.title }">
					</div>
					<div class="mb-3">
						<label for="exampleInputFile">파일 업로드</label> <input type="file"
							id="exampleInputFile">
						<p class="help-block">이미지 파일 업로드해주세요.</p>
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
					
						<input type="submit" value="글쓰기" /> | 
						<a href="onelist">목록으로</a>
					</div>
				</form>
			</article>

		</div>
	</div>
</body>
</html>