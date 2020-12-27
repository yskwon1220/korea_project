<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
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
			<div style="height:100px;"></div>
				<h2>1대1 문의</h2>

				<form name="reply" action="replyReg" method="post" onsubmit="return check();" enctype="multipart/form-data">
					<c:set var="sm" value="${data }" />
					<input type="hidden" name="board_no" value="${sm.board_no }">
					<div class="mb-3">
						<label for="title">제목</label> <input type="text"
							class="form-control" name="title" id="title" value="${sm.title }">
					</div>
					<div class="mb-3">
						<label for="content">질문</label>
						<textarea class="form-control" rows="5" name="content"
							id="content">${sm.content }</textarea>
					</div>
					<div class="mb-3">
						<label for="reply">답변</label>
						<textarea class="form-control" rows="5" name="reply" id="reply">${sm.reply }</textarea>
					</div>

					<div>
						<hr>
					</div>
					<div>

						<input class="btn btn-primary" type="submit" value="답변하기" /> <a
							class="btn btn-primary" href="info">목록으로</a>
					</div>
				</form>
				<script>
					function check() {

						if (reply.rep.value == "") {
							alert("처리상태를 입력해 주세요.");
							reply.rep.focus();
							return false;
						}

						else if (reply.content.value == "") {
							alert("내용을 입력해 주세요.");
							reply.content.focus();
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